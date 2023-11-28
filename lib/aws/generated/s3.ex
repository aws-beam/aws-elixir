# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.S3 do
  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2006-03-01",
      content_type: "text/xml",
      credential_scope: nil,
      endpoint_prefix: "s3",
      global?: false,
      protocol: "rest-xml",
      service_id: "S3",
      signature_version: "s3",
      signing_name: "s3",
      target_prefix: nil
    }
  end

  @doc """
  This action aborts a multipart upload.

  After a multipart upload is aborted, no additional parts can be uploaded using
  that upload ID. The storage consumed by any previously uploaded parts will be
  freed. However, if any part uploads are currently in progress, those part
  uploads might or might not succeed. As a result, it might be necessary to abort
  a given multipart upload multiple times in order to completely free all storage
  consumed by all parts.

  To verify that all parts have been removed, so you don't get charged for the
  part storage, you should call the
  [ListParts](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html) action and ensure that the parts list is empty.

  For information about permissions required to use the multipart upload, see
  [Multipart Upload and
  Permissions](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html).

  The following operations are related to `AbortMultipartUpload`:

    *
  [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)     *
  [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)

    *
  [CompleteMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)     *
  [ListParts](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)

    *
  [ListMultipartUploads](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html)
  """
  def abort_multipart_upload(%Client{} = client, bucket, key, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}"

    {headers, input} =
      [
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"},
        {"RequestPayer", "x-amz-request-payer"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"UploadId", "uploadId"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

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
  Completes a multipart upload by assembling previously uploaded parts.

  You first initiate the multipart upload and then upload all parts using the
  [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html) operation. After successfully uploading all relevant parts of an upload, you
  call this action to complete the upload. Upon receiving this request, Amazon S3
  concatenates all the parts in ascending order by part number to create a new
  object. In the Complete Multipart Upload request, you must provide the parts
  list. You must ensure that the parts list is complete. This action concatenates
  the parts that you provide in the list. For each part in the list, you must
  provide the part number and the `ETag` value, returned after that part was
  uploaded.

  Processing of a Complete Multipart Upload request could take several minutes to
  complete. After Amazon S3 begins processing the request, it sends an HTTP
  response header that specifies a 200 OK response. While processing is in
  progress, Amazon S3 periodically sends white space characters to keep the
  connection from timing out. A request could fail after the initial 200 OK
  response has been sent. This means that a `200 OK` response can contain either a
  success or an error. If you call the S3 API directly, make sure to design your
  application to parse the contents of the response and handle it appropriately.
  If you use Amazon Web Services SDKs, SDKs handle this condition. The SDKs detect
  the embedded error and apply error handling per your configuration settings
  (including automatically retrying the request as appropriate). If the condition
  persists, the SDKs throws an exception (or, for the SDKs that don't use
  exceptions, they return the error).

  Note that if `CompleteMultipartUpload` fails, applications should be prepared to
  retry the failed requests. For more information, see [Amazon S3 Error Best
  Practices](https://docs.aws.amazon.com/AmazonS3/latest/dev/ErrorBestPractices.html).

  You cannot use `Content-Type: application/x-www-form-urlencoded` with Complete
  Multipart Upload requests. Also, if you do not provide a `Content-Type` header,
  `CompleteMultipartUpload` returns a 200 OK response.

  For more information about multipart uploads, see [Uploading Objects Using Multipart
  Upload](https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html).

  For information about permissions required to use the multipart upload API, see
  [Multipart Upload and Permissions](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html).

  `CompleteMultipartUpload` has the following special errors:

    * Error code: `EntityTooSmall`

      * Description: Your proposed upload is smaller than the
  minimum allowed object size. Each part must be at least 5 MB in size, except the
  last part.

      * 400 Bad Request

    * Error code: `InvalidPart`

      * Description: One or more of the specified parts could
  not be found. The part might not have been uploaded, or the specified entity tag
  might not have matched the part's entity tag.

      * 400 Bad Request

    * Error code: `InvalidPartOrder`

      * Description: The list of parts was not in ascending
  order. The parts list must be specified in order by part number.

      * 400 Bad Request

    * Error code: `NoSuchUpload`

      * Description: The specified multipart upload does not
  exist. The upload ID might be invalid, or the multipart upload might have been
  aborted or completed.

      * 404 Not Found

  The following operations are related to `CompleteMultipartUpload`:

    *
  [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)     *
  [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)

    *
  [AbortMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)     *
  [ListParts](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)

    *
  [ListMultipartUploads](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html)
  """
  def complete_multipart_upload(%Client{} = client, bucket, key, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}"

    {headers, input} =
      [
        {"ChecksumCRC32", "x-amz-checksum-crc32"},
        {"ChecksumCRC32C", "x-amz-checksum-crc32c"},
        {"ChecksumSHA1", "x-amz-checksum-sha1"},
        {"ChecksumSHA256", "x-amz-checksum-sha256"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"},
        {"RequestPayer", "x-amz-request-payer"},
        {"SSECustomerAlgorithm", "x-amz-server-side-encryption-customer-algorithm"},
        {"SSECustomerKey", "x-amz-server-side-encryption-customer-key"},
        {"SSECustomerKeyMD5", "x-amz-server-side-encryption-customer-key-MD5"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"UploadId", "uploadId"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"x-amz-expiration", "Expiration"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"},
          {"x-amz-version-id", "VersionId"}
        ]
      )

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
      nil
    )
  end

  @doc """
  Creates a copy of an object that is already stored in Amazon S3.

  You can store individual objects of up to 5 TB in Amazon S3. You create a copy
  of your object up to 5 GB in size in a single atomic action using this API.
  However, to copy an object greater than 5 GB, you must use the multipart upload
  Upload Part - Copy (UploadPartCopy) API. For more information, see [Copy Object Using the REST Multipart Upload
  API](https://docs.aws.amazon.com/AmazonS3/latest/dev/CopyingObjctsUsingRESTMPUapi.html).

  All copy requests must be authenticated. Additionally, you must have *read*
  access to the source object and *write* access to the destination bucket. For
  more information, see [REST Authentication](https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html).
  Both the Region that you want to copy the object from and the Region that you
  want to copy the object to must be enabled for your account.

  A copy request might return an error when Amazon S3 receives the copy request or
  while Amazon S3 is copying the files. If the error occurs before the copy action
  starts, you receive a standard Amazon S3 error. If the error occurs during the
  copy operation, the error response is embedded in the `200 OK` response. This
  means that a `200 OK` response can contain either a success or an error. If you
  call the S3 API directly, make sure to design your application to parse the
  contents of the response and handle it appropriately. If you use Amazon Web
  Services SDKs, SDKs handle this condition. The SDKs detect the embedded error
  and apply error handling per your configuration settings (including
  automatically retrying the request as appropriate). If the condition persists,
  the SDKs throws an exception (or, for the SDKs that don't use exceptions, they
  return the error).

  If the copy is successful, you receive a response with information about the
  copied object.

  If the request is an HTTP 1.1 request, the response is chunk encoded. If it were
  not, it would not contain the content-length, and you would need to read the
  entire body.

  The copy request charge is based on the storage class and Region that you
  specify for the destination object. The request can also result in a data
  retrieval charge for the source if the source storage class bills for data
  retrieval. For pricing information, see [Amazon S3 pricing](http://aws.amazon.com/s3/pricing/).

  Amazon S3 transfer acceleration does not support cross-Region copies. If you
  request a cross-Region copy using a transfer acceleration endpoint, you get a
  400 `Bad Request` error. For more information, see [Transfer Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html).

  ## Definitions

  ### Metadata

  When copying an object, you can preserve all metadata (the default) or specify
  new metadata. However, the access control list (ACL) is not preserved and is set
  to private for the user making the request. To override the default ACL setting,
  specify a new ACL when generating a copy request. For more information, see
  [Using ACLs](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html).

  To specify whether you want the object metadata copied from the source object or
  replaced with metadata provided in the request, you can optionally add the
  `x-amz-metadata-directive` header. When you grant permissions, you can use the
  `s3:x-amz-metadata-directive` condition key to enforce certain metadata behavior
  when objects are uploaded. For more information, see [Specifying Conditions in a Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/amazon-s3-policy-keys.html)
  in the *Amazon S3 User Guide*. For a complete list of Amazon S3-specific
  condition keys, see [Actions, Resources, and Condition Keys for Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/list_amazons3.html).

  `x-amz-website-redirect-location` is unique to each object and must be specified
  in the request headers to copy the value.

  ### x-amz-copy-source-if Headers

  To only copy an object under certain conditions, such as whether the `Etag`
  matches or whether the object was modified before or after a specified date, use
  the following request parameters:

     `x-amz-copy-source-if-match`

     `x-amz-copy-source-if-none-match`

     `x-amz-copy-source-if-unmodified-since`

     `x-amz-copy-source-if-modified-since`

  If both the `x-amz-copy-source-if-match` and
  `x-amz-copy-source-if-unmodified-since` headers are present in the request and
  evaluate as follows, Amazon S3 returns `200 OK` and copies the data:

     `x-amz-copy-source-if-match` condition evaluates to true

     `x-amz-copy-source-if-unmodified-since` condition evaluates to
  false

  If both the `x-amz-copy-source-if-none-match` and
  `x-amz-copy-source-if-modified-since` headers are present in the request and
  evaluate as follows, Amazon S3 returns the `412 Precondition Failed` response
  code:

     `x-amz-copy-source-if-none-match` condition evaluates to false

     `x-amz-copy-source-if-modified-since` condition evaluates to true

  All headers with the `x-amz-` prefix, including `x-amz-copy-source`, must be
  signed.

  ### Server-side encryption

  Amazon S3 automatically encrypts all new objects that are copied to an S3
  bucket. When copying an object, if you don't specify encryption information in
  your copy request, the encryption setting of the target object is set to the
  default encryption configuration of the destination bucket. By default, all
  buckets have a base level of encryption configuration that uses server-side
  encryption with Amazon S3 managed keys (SSE-S3). If the destination bucket has a
  default encryption configuration that uses server-side encryption with Key
  Management Service (KMS) keys (SSE-KMS), dual-layer server-side encryption with
  Amazon Web Services KMS keys (DSSE-KMS), or server-side encryption with
  customer-provided encryption keys (SSE-C), Amazon S3 uses the corresponding KMS
  key, or a customer-provided key to encrypt the target object copy.

  When you perform a `CopyObject` operation, if you want to use a different type
  of encryption setting for the target object, you can use other appropriate
  encryption-related headers to encrypt the target object with a KMS key, an
  Amazon S3 managed key, or a customer-provided key. With server-side encryption,
  Amazon S3 encrypts your data as it writes your data to disks in its data centers
  and decrypts the data when you access it. If the encryption setting in your
  request is different from the default encryption configuration of the
  destination bucket, the encryption setting in your request takes precedence. If
  the source object for the copy is stored in Amazon S3 using SSE-C, you must
  provide the necessary encryption information in your request so that Amazon S3
  can decrypt the object for copying. For more information about server-side
  encryption, see [Using Server-Side Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html).

  If a target object uses SSE-KMS, you can enable an S3 Bucket Key for the object.
  For more information, see [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) in the
  *Amazon S3 User Guide*.

  ### Access Control List (ACL)-Specific Request Headers

  When copying an object, you can optionally use headers to grant ACL-based
  permissions. By default, all objects are private. Only the owner has full access
  control. When adding a new object, you can grant permissions to individual
  Amazon Web Services accounts or to predefined groups that are defined by Amazon
  S3. These permissions are then added to the ACL on the object. For more
  information, see [Access Control List (ACL) Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html) and
  [Managing ACLs Using the REST API](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-using-rest-api.html).

  If the bucket that you're copying objects to uses the bucket owner enforced
  setting for S3 Object Ownership, ACLs are disabled and no longer affect
  permissions. Buckets that use this setting only accept `PUT` requests that don't
  specify an ACL or `PUT` requests that specify bucket owner full control ACLs,
  such as the `bucket-owner-full-control` canned ACL or an equivalent form of this
  ACL expressed in the XML format.

  For more information, see [ Controlling ownership of objects and disabling ACLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html)
  in the *Amazon S3 User Guide*.

  If your bucket uses the bucket owner enforced setting for Object Ownership, all
  objects written to the bucket by any account will be owned by the bucket owner.

  ### Checksums

  When copying an object, if it has a checksum, that checksum will be copied to
  the new object by default. When you copy the object over, you can optionally
  specify a different checksum algorithm to use with the
  `x-amz-checksum-algorithm` header.

  ### Storage Class Options

  You can use the `CopyObject` action to change the storage class of an object
  that is already stored in Amazon S3 by using the `StorageClass` parameter. For
  more information, see [Storage Classes](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html)
  in the *Amazon S3 User Guide*.

  If the source object's storage class is GLACIER or DEEP_ARCHIVE, or the object's
  storage class is INTELLIGENT_TIERING and it's [ S3 Intelligent-Tiering access tier](https://docs.aws.amazon.com/AmazonS3/latest/userguide/intelligent-tiering-overview.html#intel-tiering-tier-definition)
  is Archive Access or Deep Archive Access, you must restore a copy of this object
  before you can use it as a source object for the copy operation. For more
  information, see
  [RestoreObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html). For more information, see [Copying
  Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/CopyingObjectsExamples.html).

  ### Versioning

  By default, `x-amz-copy-source` header identifies the current version of an
  object to copy. If the current version is a delete marker, Amazon S3 behaves as
  if the object was deleted. To copy a different version, use the `versionId`
  subresource.

  If you enable versioning on the target bucket, Amazon S3 generates a unique
  version ID for the object being copied. This version ID is different from the
  version ID of the source object. Amazon S3 returns the version ID of the copied
  object in the `x-amz-version-id` response header in the response.

  If you do not enable versioning or suspend it on the target bucket, the version
  ID that Amazon S3 generates is always null.

  The following operations are related to `CopyObject`:

    *
  [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)     *
  [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
  """
  def copy_object(%Client{} = client, bucket, key, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}"

    {headers, input} =
      [
        {"ChecksumAlgorithm", "x-amz-checksum-algorithm"},
        {"CopySourceSSECustomerAlgorithm",
         "x-amz-copy-source-server-side-encryption-customer-algorithm"},
        {"SSECustomerKey", "x-amz-server-side-encryption-customer-key"},
        {"CopySource", "x-amz-copy-source"},
        {"GrantFullControl", "x-amz-grant-full-control"},
        {"ACL", "x-amz-acl"},
        {"ObjectLockRetainUntilDate", "x-amz-object-lock-retain-until-date"},
        {"RequestPayer", "x-amz-request-payer"},
        {"BucketKeyEnabled", "x-amz-server-side-encryption-bucket-key-enabled"},
        {"ContentType", "Content-Type"},
        {"SSECustomerKeyMD5", "x-amz-server-side-encryption-customer-key-MD5"},
        {"ObjectLockLegalHoldStatus", "x-amz-object-lock-legal-hold"},
        {"Tagging", "x-amz-tagging"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"},
        {"CopySourceSSECustomerKey", "x-amz-copy-source-server-side-encryption-customer-key"},
        {"WebsiteRedirectLocation", "x-amz-website-redirect-location"},
        {"ContentLanguage", "Content-Language"},
        {"SSECustomerAlgorithm", "x-amz-server-side-encryption-customer-algorithm"},
        {"ContentEncoding", "Content-Encoding"},
        {"CopySourceSSECustomerKeyMD5",
         "x-amz-copy-source-server-side-encryption-customer-key-MD5"},
        {"CopySourceIfMatch", "x-amz-copy-source-if-match"},
        {"CopySourceIfUnmodifiedSince", "x-amz-copy-source-if-unmodified-since"},
        {"Expires", "Expires"},
        {"GrantWriteACP", "x-amz-grant-write-acp"},
        {"SSEKMSEncryptionContext", "x-amz-server-side-encryption-context"},
        {"CacheControl", "Cache-Control"},
        {"ExpectedSourceBucketOwner", "x-amz-source-expected-bucket-owner"},
        {"MetadataDirective", "x-amz-metadata-directive"},
        {"StorageClass", "x-amz-storage-class"},
        {"CopySourceIfModifiedSince", "x-amz-copy-source-if-modified-since"},
        {"GrantRead", "x-amz-grant-read"},
        {"TaggingDirective", "x-amz-tagging-directive"},
        {"ObjectLockMode", "x-amz-object-lock-mode"},
        {"ContentDisposition", "Content-Disposition"},
        {"ServerSideEncryption", "x-amz-server-side-encryption"},
        {"CopySourceIfNoneMatch", "x-amz-copy-source-if-none-match"},
        {"SSEKMSKeyId", "x-amz-server-side-encryption-aws-kms-key-id"},
        {"GrantReadACP", "x-amz-grant-read-acp"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"x-amz-copy-source-version-id", "CopySourceVersionId"},
          {"x-amz-expiration", "Expiration"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption-customer-algorithm", "SSECustomerAlgorithm"},
          {"x-amz-server-side-encryption-customer-key-MD5", "SSECustomerKeyMD5"},
          {"x-amz-server-side-encryption-context", "SSEKMSEncryptionContext"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"},
          {"x-amz-version-id", "VersionId"}
        ]
      )

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Creates a new S3 bucket.

  To create a bucket, you must register with Amazon S3 and have a valid Amazon Web
  Services Access Key ID to authenticate requests. Anonymous requests are never
  allowed to create buckets. By creating the bucket, you become the bucket owner.

  Not every string is an acceptable bucket name. For information about bucket
  naming restrictions, see [Bucket naming rules](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html).

  If you want to create an Amazon S3 on Outposts bucket, see [Create Bucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html).

  By default, the bucket is created in the US East (N. Virginia) Region. You can
  optionally specify a Region in the request body. To constrain the bucket
  creation to a specific Region, you can use [ `LocationConstraint`
  ](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucketConfiguration.html)
  condition key. You might choose a Region to optimize latency, minimize costs, or
  address regulatory requirements. For example, if you reside in Europe, you will
  probably find it advantageous to create buckets in the Europe (Ireland) Region.
  For more information, see [Accessing a bucket](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingBucket.html#access-bucket-intro).

  If you send your create bucket request to the `s3.amazonaws.com` endpoint, the
  request goes to the `us-east-1` Region. Accordingly, the signature calculations
  in Signature Version 4 must use `us-east-1` as the Region, even if the location
  constraint in the request specifies another Region where the bucket is to be
  created. If you create a bucket in a Region other than US East (N. Virginia),
  your application must be able to handle 307 redirect. For more information, see
  [Virtual hosting of buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html).

  ## Definitions

  ### Permissions

  In addition to `s3:CreateBucket`, the following permissions are required when
  your `CreateBucket` request includes specific headers:

     **Access control lists (ACLs)** - If your `CreateBucket` request
  specifies access control list (ACL) permissions and the ACL is public-read,
  public-read-write, authenticated-read, or if you specify access permissions
  explicitly through any other ACL, both `s3:CreateBucket` and `s3:PutBucketAcl`
  permissions are needed. If the ACL for the `CreateBucket` request is private or
  if the request doesn't specify any ACLs, only `s3:CreateBucket` permission is
  needed.

     **Object Lock** - If `ObjectLockEnabledForBucket` is set to true in
  your `CreateBucket` request, `s3:PutBucketObjectLockConfiguration` and
  `s3:PutBucketVersioning` permissions are required.

     **S3 Object Ownership** - If your `CreateBucket` request includes
  the `x-amz-object-ownership` header, then the `s3:PutBucketOwnershipControls`
  permission is required. By default, `ObjectOwnership` is set to
  `BucketOWnerEnforced` and ACLs are disabled. We recommend keeping ACLs disabled,
  except in uncommon use cases where you must control access for each object
  individually. If you want to change the `ObjectOwnership` setting, you can use
  the `x-amz-object-ownership` header in your `CreateBucket` request to set the
  `ObjectOwnership` setting of your choice. For more information about S3 Object
  Ownership, see [Controlling object ownership
  ](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html)
  in the *Amazon S3 User Guide*.

     **S3 Block Public Access** - If your specific use case requires
  granting public access to your S3 resources, you can disable Block Public
  Access. You can create a new bucket with Block Public Access enabled, then
  separately call the [ `DeletePublicAccessBlock`
  ](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeletePublicAccessBlock.html)
  API. To use this operation, you must have the `s3:PutBucketPublicAccessBlock`
  permission. By default, all Block Public Access settings are enabled for new
  buckets. To avoid inadvertent exposure of your resources, we recommend keeping
  the S3 Block Public Access settings enabled. For more information about S3 Block
  Public Access, see [Blocking public access to your Amazon S3 storage
  ](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html)
  in the *Amazon S3 User Guide*.

  If your `CreateBucket` request sets `BucketOwnerEnforced` for Amazon S3 Object
  Ownership and specifies a bucket ACL that provides access to an external Amazon
  Web Services account, your request fails with a `400` error and returns the
  `InvalidBucketAcLWithObjectOwnership` error code. For more information, see
  [Setting Object Ownership on an existing bucket
  ](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-ownership-existing-bucket.html)
  in the *Amazon S3 User Guide*.

  The following operations are related to `CreateBucket`:

    *
  [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)     *
  [DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html)
  """
  def create_bucket(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}"

    {headers, input} =
      [
        {"ACL", "x-amz-acl"},
        {"GrantFullControl", "x-amz-grant-full-control"},
        {"GrantRead", "x-amz-grant-read"},
        {"GrantReadACP", "x-amz-grant-read-acp"},
        {"GrantWrite", "x-amz-grant-write"},
        {"GrantWriteACP", "x-amz-grant-write-acp"},
        {"ObjectLockEnabledForBucket", "x-amz-bucket-object-lock-enabled"},
        {"ObjectOwnership", "x-amz-object-ownership"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  This action initiates a multipart upload and returns an upload ID.

  This upload ID is used to associate all of the parts in the specific multipart
  upload. You specify this upload ID in each of your subsequent upload part
  requests (see
  [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)). You also include this upload ID in the final request to either complete or abort
  the multipart upload request.

  For more information about multipart uploads, see [Multipart Upload
  Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html).

  If you have configured a lifecycle rule to abort incomplete multipart uploads,
  the upload must complete within the number of days specified in the bucket
  lifecycle configuration. Otherwise, the incomplete multipart upload becomes
  eligible for an abort action and Amazon S3 aborts the multipart upload. For more
  information, see [Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Configuration](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config).

  For information about the permissions required to use the multipart upload API,
  see [Multipart Upload and Permissions](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html).

  For request signing, multipart upload is just a series of regular requests. You
  initiate a multipart upload, send one or more requests to upload parts, and then
  complete the multipart upload process. You sign each request individually. There
  is nothing special about signing multipart upload requests. For more information
  about signing, see [Authenticating Requests (Amazon Web Services Signature Version
  4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html).

  After you initiate a multipart upload and upload one or more parts, to stop
  being charged for storing the uploaded parts, you must either complete or abort
  the multipart upload. Amazon S3 frees up the space used to store the parts and
  stop charging you for storing them only after you either complete or abort a
  multipart upload.

  Server-side encryption is for data encryption at rest. Amazon S3 encrypts your
  data as it writes it to disks in its data centers and decrypts it when you
  access it. Amazon S3 automatically encrypts all new objects that are uploaded to
  an S3 bucket. When doing a multipart upload, if you don't specify encryption
  information in your request, the encryption setting of the uploaded parts is set
  to the default encryption configuration of the destination bucket. By default,
  all buckets have a base level of encryption configuration that uses server-side
  encryption with Amazon S3 managed keys (SSE-S3). If the destination bucket has a
  default encryption configuration that uses server-side encryption with an Key
  Management Service (KMS) key (SSE-KMS), or a customer-provided encryption key
  (SSE-C), Amazon S3 uses the corresponding KMS key, or a customer-provided key to
  encrypt the uploaded parts. When you perform a CreateMultipartUpload operation,
  if you want to use a different type of encryption setting for the uploaded
  parts, you can request that Amazon S3 encrypts the object with a KMS key, an
  Amazon S3 managed key, or a customer-provided key. If the encryption setting in
  your request is different from the default encryption configuration of the
  destination bucket, the encryption setting in your request takes precedence. If
  you choose to provide your own encryption key, the request headers you provide
  in
  [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html) and
  [UploadPartCopy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html)
  requests must match the headers you used in the request to initiate the upload
  by using `CreateMultipartUpload`. You can request that Amazon S3 save the
  uploaded parts encrypted with server-side encryption with an Amazon S3 managed
  key (SSE-S3), an Key Management Service (KMS) key (SSE-KMS), or a
  customer-provided encryption key (SSE-C).

  To perform a multipart upload with encryption by using an Amazon Web Services
  KMS key, the requester must have permission to the `kms:Decrypt` and
  `kms:GenerateDataKey*` actions on the key. These permissions are required
  because Amazon S3 must decrypt and read data from the encrypted file parts
  before it completes the multipart upload. For more information, see [Multipart upload API and
  permissions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html#mpuAndPermissions)
  and [Protecting data using server-side encryption with Amazon Web Services KMS](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html)
  in the *Amazon S3 User Guide*.

  If your Identity and Access Management (IAM) user or role is in the same Amazon
  Web Services account as the KMS key, then you must have these permissions on the
  key policy. If your IAM user or role belongs to a different account than the
  key, then you must have the permissions on both the key policy and your IAM user
  or role.

  For more information, see [Protecting Data Using Server-Side Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html).

  ## Definitions

  ### Access Permissions

  When copying an object, you can optionally specify the accounts or groups that
  should be granted specific permissions on the new object. There are two ways to
  grant the permissions using the request headers:

     Specify a canned ACL with the `x-amz-acl` request header. For more
  information, see [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).

     Specify access permissions explicitly with the `x-amz-grant-read`,
  `x-amz-grant-read-acp`, `x-amz-grant-write-acp`, and `x-amz-grant-full-control`
  headers. These parameters map to the set of permissions that Amazon S3 supports
  in an ACL. For more information, see [Access Control List (ACL) Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html).

  You can use either a canned ACL or specify access permissions explicitly. You
  cannot do both.

  ### Server-Side- Encryption-Specific Request Headers

  Amazon S3 encrypts data by using server-side encryption with an Amazon S3
  managed key (SSE-S3) by default. Server-side encryption is for data encryption
  at rest. Amazon S3 encrypts your data as it writes it to disks in its data
  centers and decrypts it when you access it. You can request that Amazon S3
  encrypts data at rest by using server-side encryption with other key options.
  The option you use depends on whether you want to use KMS keys (SSE-KMS) or
  provide your own encryption keys (SSE-C).

     Use KMS keys (SSE-KMS) that include the Amazon Web Services managed
  key (`aws/s3`) and KMS customer managed keys stored in Key Management Service
  (KMS) – If you want Amazon Web Services to manage the keys used to encrypt data,
  specify the following headers in the request.

       `x-amz-server-side-encryption`

       `x-amz-server-side-encryption-aws-kms-key-id`

       `x-amz-server-side-encryption-context`

  If you specify `x-amz-server-side-encryption:aws:kms`, but don't provide
  `x-amz-server-side-encryption-aws-kms-key-id`, Amazon S3 uses the Amazon Web
  Services managed key (`aws/s3` key) in KMS to protect the data.

  All `GET` and `PUT` requests for an object protected by KMS fail if you don't
  make them by using Secure Sockets Layer (SSL), Transport Layer Security (TLS),
  or Signature Version 4.

  For more information about server-side encryption with KMS keys (SSE-KMS), see
  [Protecting Data Using Server-Side Encryption with KMS keys](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html).

     Use customer-provided encryption keys (SSE-C) – If you want to
  manage your own encryption keys, provide all the following headers in the
  request.

       `x-amz-server-side-encryption-customer-algorithm`

       `x-amz-server-side-encryption-customer-key`

       `x-amz-server-side-encryption-customer-key-MD5`

  For more information about server-side encryption with customer-provided
  encryption keys (SSE-C), see [ Protecting data using server-side encryption with customer-provided encryption keys
  (SSE-C)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html).

  ### Access-Control-List (ACL)-Specific Request Headers

  You also can use the following access control–related headers with this
  operation. By default, all objects are private. Only the owner has full access
  control. When adding a new object, you can grant permissions to individual
  Amazon Web Services accounts or to predefined groups defined by Amazon S3. These
  permissions are then added to the access control list (ACL) on the object. For
  more information, see [Using ACLs](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html).
  With this operation, you can grant access permissions using one of the following
  two methods:

     Specify a canned ACL (`x-amz-acl`) — Amazon S3 supports a set of
  predefined ACLs, known as *canned ACLs*. Each canned ACL has a predefined set of
  grantees and permissions. For more information, see [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).

     Specify access permissions explicitly — To explicitly grant access
  permissions to specific Amazon Web Services accounts or groups, use the
  following headers. Each header maps to specific permissions that Amazon S3
  supports in an ACL. For more information, see [Access Control List (ACL) Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html). In
  the header, you specify a list of grantees who get the specific permission. To
  grant permissions explicitly, use:

       `x-amz-grant-read`

       `x-amz-grant-write`

       `x-amz-grant-read-acp`

       `x-amz-grant-write-acp`

       `x-amz-grant-full-control`

  You specify each grantee as a type=value pair, where the type is one of the
  following:

       `id` – if the value specified is the canonical user ID
  of an Amazon Web Services account

       `uri` – if you are granting permissions to a predefined
  group

       `emailAddress` – if the value specified is the email
  address of an Amazon Web Services account

  Using email addresses to specify a grantee is only supported in the following
  Amazon Web Services Regions:

     US East (N. Virginia)

     US West (N. California)

     US West (Oregon)

     Asia Pacific (Singapore)

     Asia Pacific (Sydney)

     Asia Pacific (Tokyo)

     Europe (Ireland)

     South America (São Paulo)

  For a list of all the Amazon S3 supported Regions and endpoints, see [Regions and
  Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region)
  in the Amazon Web Services General Reference.

  For example, the following `x-amz-grant-read` header grants the Amazon Web
  Services accounts identified by account IDs permissions to read object data and
  its metadata:

  `x-amz-grant-read: id="11112222333", id="444455556666" `

  The following operations are related to `CreateMultipartUpload`:

    *
  [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)     *
  [CompleteMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)

    *
  [AbortMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)     *
  [ListParts](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)

    *
  [ListMultipartUploads](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html)
  """
  def create_multipart_upload(%Client{} = client, bucket, key, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?uploads"

    {headers, input} =
      [
        {"ACL", "x-amz-acl"},
        {"BucketKeyEnabled", "x-amz-server-side-encryption-bucket-key-enabled"},
        {"CacheControl", "Cache-Control"},
        {"ChecksumAlgorithm", "x-amz-checksum-algorithm"},
        {"ContentDisposition", "Content-Disposition"},
        {"ContentEncoding", "Content-Encoding"},
        {"ContentLanguage", "Content-Language"},
        {"ContentType", "Content-Type"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"},
        {"Expires", "Expires"},
        {"GrantFullControl", "x-amz-grant-full-control"},
        {"GrantRead", "x-amz-grant-read"},
        {"GrantReadACP", "x-amz-grant-read-acp"},
        {"GrantWriteACP", "x-amz-grant-write-acp"},
        {"ObjectLockLegalHoldStatus", "x-amz-object-lock-legal-hold"},
        {"ObjectLockMode", "x-amz-object-lock-mode"},
        {"ObjectLockRetainUntilDate", "x-amz-object-lock-retain-until-date"},
        {"RequestPayer", "x-amz-request-payer"},
        {"SSECustomerAlgorithm", "x-amz-server-side-encryption-customer-algorithm"},
        {"SSECustomerKey", "x-amz-server-side-encryption-customer-key"},
        {"SSECustomerKeyMD5", "x-amz-server-side-encryption-customer-key-MD5"},
        {"SSEKMSEncryptionContext", "x-amz-server-side-encryption-context"},
        {"SSEKMSKeyId", "x-amz-server-side-encryption-aws-kms-key-id"},
        {"ServerSideEncryption", "x-amz-server-side-encryption"},
        {"StorageClass", "x-amz-storage-class"},
        {"Tagging", "x-amz-tagging"},
        {"WebsiteRedirectLocation", "x-amz-website-redirect-location"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-abort-date", "AbortDate"},
          {"x-amz-abort-rule-id", "AbortRuleId"},
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"x-amz-checksum-algorithm", "ChecksumAlgorithm"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption-customer-algorithm", "SSECustomerAlgorithm"},
          {"x-amz-server-side-encryption-customer-key-MD5", "SSECustomerKeyMD5"},
          {"x-amz-server-side-encryption-context", "SSEKMSEncryptionContext"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"}
        ]
      )

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
      nil
    )
  end

  @doc """
  Deletes the S3 bucket.

  All objects (including all object versions and delete markers) in the bucket
  must be deleted before the bucket itself can be deleted.

  The following operations are related to `DeleteBucket`:

    *
  [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)     *
  [DeleteObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)
  """
  def delete_bucket(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}"

    {headers, input} =
      [
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Deletes an analytics configuration for the bucket (specified by the analytics
  configuration ID).

  To use this operation, you must have permissions to perform the
  `s3:PutAnalyticsConfiguration` action. The bucket owner has this permission by
  default. The bucket owner can grant this permission to others. For more
  information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  For information about the Amazon S3 analytics feature, see [Amazon S3 Analytics – Storage Class
  Analysis](https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html).

  The following operations are related to `DeleteBucketAnalyticsConfiguration`:

    *
  [GetBucketAnalyticsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketAnalyticsConfiguration.html)     *
  [ListBucketAnalyticsConfigurations](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketAnalyticsConfigurations.html)

    *
  [PutBucketAnalyticsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketAnalyticsConfiguration.html)
  """
  def delete_bucket_analytics_configuration(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?analytics"

    {headers, input} =
      [
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"Id", "id"}
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
  Deletes the `cors` configuration information set for the bucket.

  To use this operation, you must have permission to perform the
  `s3:PutBucketCORS` action. The bucket owner has this permission by default and
  can grant this permission to others.

  For information about `cors`, see [Enabling Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html) in the
  *Amazon S3 User Guide*.

  ## Related Resources

    *
  [PutBucketCors](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketCors.html)     *
  [RESTOPTIONSobject](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTOPTIONSobject.html)
  """
  def delete_bucket_cors(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?cors"

    {headers, input} =
      [
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  This implementation of the DELETE action resets the default encryption for the
  bucket as server-side encryption with Amazon S3 managed keys (SSE-S3).

  For information about the bucket default encryption feature, see [Amazon S3 Bucket Default
  Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html)
  in the *Amazon S3 User Guide*.

  To use this operation, you must have permissions to perform the
  `s3:PutEncryptionConfiguration` action. The bucket owner has this permission by
  default. The bucket owner can grant this permission to others. For more
  information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
  in the *Amazon S3 User Guide*.

  The following operations are related to `DeleteBucketEncryption`:

    *
  [PutBucketEncryption](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketEncryption.html)     *
  [GetBucketEncryption](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketEncryption.html)
  """
  def delete_bucket_encryption(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?encryption"

    {headers, input} =
      [
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Deletes the S3 Intelligent-Tiering configuration from the specified bucket.

  The S3 Intelligent-Tiering storage class is designed to optimize storage costs
  by automatically moving data to the most cost-effective storage access tier,
  without performance impact or operational overhead. S3 Intelligent-Tiering
  delivers automatic cost savings in three low latency and high throughput access
  tiers. To get the lowest storage cost on data that can be accessed in minutes to
  hours, you can choose to activate additional archiving capabilities.

  The S3 Intelligent-Tiering storage class is the ideal storage class for data
  with unknown, changing, or unpredictable access patterns, independent of object
  size or retention period. If the size of an object is less than 128 KB, it is
  not monitored and not eligible for auto-tiering. Smaller objects can be stored,
  but they are always charged at the Frequent Access tier rates in the S3
  Intelligent-Tiering storage class.

  For more information, see [Storage class for automatically optimizing frequently and infrequently accessed
  objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access).

  Operations related to `DeleteBucketIntelligentTieringConfiguration` include:

    *
  [GetBucketIntelligentTieringConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketIntelligentTieringConfiguration.html)     *
  [PutBucketIntelligentTieringConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketIntelligentTieringConfiguration.html)

    *
  [ListBucketIntelligentTieringConfigurations](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketIntelligentTieringConfigurations.html)
  """
  def delete_bucket_intelligent_tiering_configuration(
        %Client{} = client,
        bucket,
        input,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?intelligent-tiering"
    headers = []

    {query_params, input} =
      [
        {"Id", "id"}
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
  Deletes an inventory configuration (identified by the inventory ID) from the
  bucket.

  To use this operation, you must have permissions to perform the
  `s3:PutInventoryConfiguration` action. The bucket owner has this permission by
  default. The bucket owner can grant this permission to others. For more
  information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  For information about the Amazon S3 inventory feature, see [Amazon S3 Inventory](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html).

  Operations related to `DeleteBucketInventoryConfiguration` include:

    *
  [GetBucketInventoryConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketInventoryConfiguration.html)     *
  [PutBucketInventoryConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketInventoryConfiguration.html)

    *
  [ListBucketInventoryConfigurations](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketInventoryConfigurations.html)
  """
  def delete_bucket_inventory_configuration(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?inventory"

    {headers, input} =
      [
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"Id", "id"}
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
  Deletes the lifecycle configuration from the specified bucket.

  Amazon S3 removes all the lifecycle configuration rules in the lifecycle
  subresource associated with the bucket. Your objects never expire, and Amazon S3
  no longer automatically deletes any objects on the basis of rules contained in
  the deleted lifecycle configuration.

  To use this operation, you must have permission to perform the
  `s3:PutLifecycleConfiguration` action. By default, the bucket owner has this
  permission and the bucket owner can grant this permission to others.

  There is usually some time lag before lifecycle configuration deletion is fully
  propagated to all the Amazon S3 systems.

  For more information about the object expiration, see [Elements to Describe Lifecycle
  Actions](https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#intro-lifecycle-rules-actions).

  Related actions include:

    *
  [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html)     *
  [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html)
  """
  def delete_bucket_lifecycle(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?lifecycle"

    {headers, input} =
      [
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Deletes a metrics configuration for the Amazon CloudWatch request metrics
  (specified by the metrics configuration ID) from the bucket.

  Note that this doesn't include the daily storage metrics.

  To use this operation, you must have permissions to perform the
  `s3:PutMetricsConfiguration` action. The bucket owner has this permission by
  default. The bucket owner can grant this permission to others. For more
  information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  For information about CloudWatch request metrics for Amazon S3, see [Monitoring Metrics with Amazon
  CloudWatch](https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html).

  The following operations are related to `DeleteBucketMetricsConfiguration`:

    *
  [GetBucketMetricsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketMetricsConfiguration.html)     *
  [PutBucketMetricsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketMetricsConfiguration.html)

    *
  [ListBucketMetricsConfigurations](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketMetricsConfigurations.html)     * [Monitoring Metrics with Amazon
  CloudWatch](https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html)
  """
  def delete_bucket_metrics_configuration(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?metrics"

    {headers, input} =
      [
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"Id", "id"}
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
  Removes `OwnershipControls` for an Amazon S3 bucket.

  To use this operation, you must have the `s3:PutBucketOwnershipControls`
  permission. For more information about Amazon S3 permissions, see [Specifying Permissions in a
  Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html).

  For information about Amazon S3 Object Ownership, see [Using Object Ownership](https://docs.aws.amazon.com/AmazonS3/latest/dev/about-object-ownership.html).

  The following operations are related to `DeleteBucketOwnershipControls`:

    * `GetBucketOwnershipControls`

    * `PutBucketOwnershipControls`
  """
  def delete_bucket_ownership_controls(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?ownershipControls"

    {headers, input} =
      [
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  This implementation of the DELETE action uses the policy subresource to delete
  the policy of a specified bucket.

  If you are using an identity other than the root user of the Amazon Web Services
  account that owns the bucket, the calling identity must have the
  `DeleteBucketPolicy` permissions on the specified bucket and belong to the
  bucket owner's account to use this operation.

  If you don't have `DeleteBucketPolicy` permissions, Amazon S3 returns a `403
  Access Denied` error. If you have the correct permissions, but you're not using
  an identity that belongs to the bucket owner's account, Amazon S3 returns a `405
  Method Not Allowed` error.

  To ensure that bucket owners don't inadvertently lock themselves out of their
  own buckets, the root principal in a bucket owner's Amazon Web Services account
  can perform the `GetBucketPolicy`, `PutBucketPolicy`, and `DeleteBucketPolicy`
  API actions, even if their bucket policy explicitly denies the root principal's
  access. Bucket owner root principals can only be blocked from performing these
  API actions by VPC endpoint policies and Amazon Web Services Organizations
  policies.

  For more information about bucket policies, see [Using Bucket Policies and UserPolicies](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html).

  The following operations are related to `DeleteBucketPolicy`

    *
  [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)     *
  [DeleteObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)
  """
  def delete_bucket_policy(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?policy"

    {headers, input} =
      [
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Deletes the replication configuration from the bucket.

  To use this operation, you must have permissions to perform the
  `s3:PutReplicationConfiguration` action. The bucket owner has these permissions
  by default and can grant it to others. For more information about permissions,
  see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  It can take a while for the deletion of a replication configuration to fully
  propagate.

  For information about replication configuration, see
  [Replication](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html) in the *Amazon S3 User Guide*.

  The following operations are related to `DeleteBucketReplication`:

    *
  [PutBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketReplication.html)

    *
  [GetBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketReplication.html)
  """
  def delete_bucket_replication(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?replication"

    {headers, input} =
      [
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Deletes the tags from the bucket.

  To use this operation, you must have permission to perform the
  `s3:PutBucketTagging` action. By default, the bucket owner has this permission
  and can grant this permission to others.

  The following operations are related to `DeleteBucketTagging`:

    *
  [GetBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketTagging.html)     *
  [PutBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketTagging.html)
  """
  def delete_bucket_tagging(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?tagging"

    {headers, input} =
      [
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  This action removes the website configuration for a bucket.

  Amazon S3 returns a `200 OK` response upon successfully deleting a website
  configuration on the specified bucket. You will get a `200 OK` response if the
  website configuration you are trying to delete does not exist on the bucket.
  Amazon S3 returns a `404` response if the bucket specified in the request does
  not exist.

  This DELETE action requires the `S3:DeleteBucketWebsite` permission. By default,
  only the bucket owner can delete the website configuration attached to a bucket.
  However, bucket owners can grant other users permission to delete the website
  configuration by writing a bucket policy granting them the
  `S3:DeleteBucketWebsite` permission.

  For more information about hosting websites, see [Hosting Websites on Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html).

  The following operations are related to `DeleteBucketWebsite`:

    *
  [GetBucketWebsite](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketWebsite.html)     *
  [PutBucketWebsite](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketWebsite.html)
  """
  def delete_bucket_website(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?website"

    {headers, input} =
      [
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Removes the null version (if there is one) of an object and inserts a delete
  marker, which becomes the latest version of the object.

  If there isn't a null version, Amazon S3 does not remove any objects but will
  still respond that the command was successful.

  To remove a specific version, you must use the version Id subresource. Using
  this subresource permanently deletes the version. If the object deleted is a
  delete marker, Amazon S3 sets the response header, `x-amz-delete-marker`, to
  true.

  If the object you want to delete is in a bucket where the bucket versioning
  configuration is MFA Delete enabled, you must include the `x-amz-mfa` request
  header in the DELETE `versionId` request. Requests that include `x-amz-mfa` must
  use HTTPS.

  For more information about MFA Delete, see [Using MFA Delete](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMFADelete.html). To
  see sample requests that use versioning, see [Sample Request](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectDELETE.html#ExampleVersionObjectDelete).

  You can delete objects by explicitly calling DELETE Object or configure its
  lifecycle
  ([PutBucketLifecycle](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycle.html)) to enable Amazon S3 to remove them for you. If you want to block users or
  accounts from removing or deleting objects from your bucket, you must deny them
  the `s3:DeleteObject`, `s3:DeleteObjectVersion`, and
  `s3:PutLifeCycleConfiguration` actions.

  The following action is related to `DeleteObject`:

    *
  [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)
  """
  def delete_object(%Client{} = client, bucket, key, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}"

    {headers, input} =
      [
        {"BypassGovernanceRetention", "x-amz-bypass-governance-retention"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"},
        {"MFA", "x-amz-mfa"},
        {"RequestPayer", "x-amz-request-payer"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"VersionId", "versionId"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-delete-marker", "DeleteMarker"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-version-id", "VersionId"}
        ]
      )

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
  Removes the entire tag set from the specified object.

  For more information about managing object tags, see [ Object Tagging](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-tagging.html).

  To use this operation, you must have permission to perform the
  `s3:DeleteObjectTagging` action.

  To delete tags of a specific object version, add the `versionId` query parameter
  in the request. You will need permission for the `s3:DeleteObjectVersionTagging`
  action.

  The following operations are related to `DeleteObjectTagging`:

    *
  [PutObjectTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObjectTagging.html)     *
  [GetObjectTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html)
  """
  def delete_object_tagging(%Client{} = client, bucket, key, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?tagging"

    {headers, input} =
      [
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"VersionId", "versionId"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-version-id", "VersionId"}]
      )

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
  This action enables you to delete multiple objects from a bucket using a single
  HTTP request.

  If you know the object keys that you want to delete, then this action provides a
  suitable alternative to sending individual delete requests, reducing per-request
  overhead.

  The request contains a list of up to 1000 keys that you want to delete. In the
  XML, you provide the object key names, and optionally, version IDs if you want
  to delete a specific version of the object from a versioning-enabled bucket. For
  each key, Amazon S3 performs a delete action and returns the result of that
  delete, success, or failure, in the response. Note that if the object specified
  in the request is not found, Amazon S3 returns the result as deleted.

  The action supports two modes for the response: verbose and quiet. By default,
  the action uses verbose mode in which the response includes the result of
  deletion of each key in your request. In quiet mode the response includes only
  keys where the delete action encountered an error. For a successful deletion,
  the action does not return any information about the delete in the response
  body.

  When performing this action on an MFA Delete enabled bucket, that attempts to
  delete any versioned objects, you must include an MFA token. If you do not
  provide one, the entire request will fail, even if there are non-versioned
  objects you are trying to delete. If you provide an invalid token, whether there
  are versioned keys in the request or not, the entire Multi-Object Delete request
  will fail. For information about MFA Delete, see [ MFA Delete](https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html#MultiFactorAuthenticationDelete).

  Finally, the Content-MD5 header is required for all Multi-Object Delete
  requests. Amazon S3 uses the header value to ensure that your request body has
  not been altered in transit.

  The following operations are related to `DeleteObjects`:

    *
  [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)     *
  [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)

    *
  [CompleteMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)     *
  [ListParts](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)

    *
  [AbortMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)
  """
  def delete_objects(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?delete"

    {headers, input} =
      [
        {"BypassGovernanceRetention", "x-amz-bypass-governance-retention"},
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"},
        {"MFA", "x-amz-mfa"},
        {"RequestPayer", "x-amz-request-payer"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    options =
      Keyword.put(
        options,
        :append_sha256_content_hash,
        true
      )

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
      nil
    )
  end

  @doc """
  Removes the `PublicAccessBlock` configuration for an Amazon S3 bucket.

  To use this operation, you must have the `s3:PutBucketPublicAccessBlock`
  permission. For more information about permissions, see [Permissions Related to Bucket Subresource
  Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  The following operations are related to `DeletePublicAccessBlock`:

    * [Using Amazon S3 Block Public Access](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html)

    *
  [GetPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetPublicAccessBlock.html)     *
  [PutPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutPublicAccessBlock.html)

    *
  [GetBucketPolicyStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketPolicyStatus.html)
  """
  def delete_public_access_block(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?publicAccessBlock"

    {headers, input} =
      [
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  This implementation of the GET action uses the `accelerate` subresource to
  return the Transfer Acceleration state of a bucket, which is either `Enabled` or
  `Suspended`.

  Amazon S3 Transfer Acceleration is a bucket-level feature that enables you to
  perform faster data transfers to and from Amazon S3.

  To use this operation, you must have permission to perform the
  `s3:GetAccelerateConfiguration` action. The bucket owner has this permission by
  default. The bucket owner can grant this permission to others. For more
  information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
  in the *Amazon S3 User Guide*.

  You set the Transfer Acceleration state of an existing bucket to `Enabled` or
  `Suspended` by using the
  [PutBucketAccelerateConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketAccelerateConfiguration.html) operation.

  A GET `accelerate` request does not return a state value for a bucket that has
  no transfer acceleration state. A bucket has no Transfer Acceleration state if a
  state has never been set on the bucket.

  For more information about transfer acceleration, see [Transfer
  Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html)
  in the Amazon S3 User Guide.

  The following operations are related to `GetBucketAccelerateConfiguration`:

    *
  [PutBucketAccelerateConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketAccelerateConfiguration.html)
  """
  def get_bucket_accelerate_configuration(
        %Client{} = client,
        bucket,
        expected_bucket_owner \\ nil,
        request_payer \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?accelerate"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    headers =
      if !is_nil(request_payer) do
        [{"x-amz-request-payer", request_payer} | headers]
      else
        headers
      end

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  This implementation of the `GET` action uses the `acl` subresource to return the
  access control list (ACL) of a bucket.

  To use `GET` to return the ACL of the bucket, you must have `READ_ACP` access to
  the bucket. If `READ_ACP` permission is granted to the anonymous user, you can
  return the ACL of the bucket without using an authorization header.

  To use this API operation against an access point, provide the alias of the
  access point in place of the bucket name.

  To use this API operation against an Object Lambda access point, provide the
  alias of the Object Lambda access point in place of the bucket name. If the
  Object Lambda access point alias in a request is not valid, the error code
  `InvalidAccessPointAliasError` is returned. For more information about
  `InvalidAccessPointAliasError`, see [List of Error Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList).

  If your bucket uses the bucket owner enforced setting for S3 Object Ownership,
  requests to read ACLs are still supported and return the
  `bucket-owner-full-control` ACL with the owner being the account that created
  the bucket. For more information, see [ Controlling object ownership and disabling
  ACLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html)
  in the *Amazon S3 User Guide*.

  The following operations are related to `GetBucketAcl`:

    *
  [ListObjects](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html)
  """
  def get_bucket_acl(%Client{} = client, bucket, expected_bucket_owner \\ nil, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?acl"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  This implementation of the GET action returns an analytics configuration
  (identified by the analytics configuration ID) from the bucket.

  To use this operation, you must have permissions to perform the
  `s3:GetAnalyticsConfiguration` action. The bucket owner has this permission by
  default. The bucket owner can grant this permission to others. For more
  information about permissions, see [ Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
  in the *Amazon S3 User Guide*.

  For information about Amazon S3 analytics feature, see [Amazon S3 Analytics – Storage Class
  Analysis](https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html)
  in the *Amazon S3 User Guide*.

  The following operations are related to `GetBucketAnalyticsConfiguration`:

    *
  [DeleteBucketAnalyticsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketAnalyticsConfiguration.html)     *
  [ListBucketAnalyticsConfigurations](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketAnalyticsConfigurations.html)

    *
  [PutBucketAnalyticsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketAnalyticsConfiguration.html)
  """
  def get_bucket_analytics_configuration(
        %Client{} = client,
        bucket,
        id,
        expected_bucket_owner \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?analytics"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(id) do
        [{"id", id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the Cross-Origin Resource Sharing (CORS) configuration information set
  for the bucket.

  To use this operation, you must have permission to perform the
  `s3:GetBucketCORS` action. By default, the bucket owner has this permission and
  can grant it to others.

  To use this API operation against an access point, provide the alias of the
  access point in place of the bucket name.

  To use this API operation against an Object Lambda access point, provide the
  alias of the Object Lambda access point in place of the bucket name. If the
  Object Lambda access point alias in a request is not valid, the error code
  `InvalidAccessPointAliasError` is returned. For more information about
  `InvalidAccessPointAliasError`, see [List of Error Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList).

  For more information about CORS, see [ Enabling Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html).

  The following operations are related to `GetBucketCors`:

    *
  [PutBucketCors](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketCors.html)     *
  [DeleteBucketCors](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketCors.html)
  """
  def get_bucket_cors(%Client{} = client, bucket, expected_bucket_owner \\ nil, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?cors"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the default encryption configuration for an Amazon S3 bucket.

  By default, all buckets have a default encryption configuration that uses
  server-side encryption with Amazon S3 managed keys (SSE-S3). For information
  about the bucket default encryption feature, see [Amazon S3 Bucket Default Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html)
  in the *Amazon S3 User Guide*.

  To use this operation, you must have permission to perform the
  `s3:GetEncryptionConfiguration` action. The bucket owner has this permission by
  default. The bucket owner can grant this permission to others. For more
  information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  The following operations are related to `GetBucketEncryption`:

    *
  [PutBucketEncryption](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketEncryption.html)     *
  [DeleteBucketEncryption](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketEncryption.html)
  """
  def get_bucket_encryption(
        %Client{} = client,
        bucket,
        expected_bucket_owner \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?encryption"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets the S3 Intelligent-Tiering configuration from the specified bucket.

  The S3 Intelligent-Tiering storage class is designed to optimize storage costs
  by automatically moving data to the most cost-effective storage access tier,
  without performance impact or operational overhead. S3 Intelligent-Tiering
  delivers automatic cost savings in three low latency and high throughput access
  tiers. To get the lowest storage cost on data that can be accessed in minutes to
  hours, you can choose to activate additional archiving capabilities.

  The S3 Intelligent-Tiering storage class is the ideal storage class for data
  with unknown, changing, or unpredictable access patterns, independent of object
  size or retention period. If the size of an object is less than 128 KB, it is
  not monitored and not eligible for auto-tiering. Smaller objects can be stored,
  but they are always charged at the Frequent Access tier rates in the S3
  Intelligent-Tiering storage class.

  For more information, see [Storage class for automatically optimizing frequently and infrequently accessed
  objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access).

  Operations related to `GetBucketIntelligentTieringConfiguration` include:

    *
  [DeleteBucketIntelligentTieringConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketIntelligentTieringConfiguration.html)     *
  [PutBucketIntelligentTieringConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketIntelligentTieringConfiguration.html)

    *
  [ListBucketIntelligentTieringConfigurations](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketIntelligentTieringConfigurations.html)
  """
  def get_bucket_intelligent_tiering_configuration(%Client{} = client, bucket, id, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?intelligent-tiering"
    headers = []
    query_params = []

    query_params =
      if !is_nil(id) do
        [{"id", id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns an inventory configuration (identified by the inventory configuration
  ID) from the bucket.

  To use this operation, you must have permissions to perform the
  `s3:GetInventoryConfiguration` action. The bucket owner has this permission by
  default and can grant this permission to others. For more information about
  permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  For information about the Amazon S3 inventory feature, see [Amazon S3 Inventory](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html).

  The following operations are related to `GetBucketInventoryConfiguration`:

    *
  [DeleteBucketInventoryConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketInventoryConfiguration.html)     *
  [ListBucketInventoryConfigurations](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketInventoryConfigurations.html)

    *
  [PutBucketInventoryConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketInventoryConfiguration.html)
  """
  def get_bucket_inventory_configuration(
        %Client{} = client,
        bucket,
        id,
        expected_bucket_owner \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?inventory"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(id) do
        [{"id", id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  For an updated version of this API, see
  [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html).  If you configured a bucket lifecycle using the `filter` element, you should see
  the updated version of this topic. This topic is provided for backward
  compatibility.

  Returns the lifecycle configuration information set on the bucket. For
  information about lifecycle configuration, see [Object Lifecycle
  Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html).

  To use this operation, you must have permission to perform the
  `s3:GetLifecycleConfiguration` action. The bucket owner has this permission by
  default. The bucket owner can grant this permission to others. For more
  information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  `GetBucketLifecycle` has the following special error:

    * Error code: `NoSuchLifecycleConfiguration`

      * Description: The lifecycle configuration does not
  exist.

      * HTTP Status Code: 404 Not Found

      * SOAP Fault Code Prefix: Client

  The following operations are related to `GetBucketLifecycle`:

    *
  [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html)     *
  [PutBucketLifecycle](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycle.html)

    *
  [DeleteBucketLifecycle](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketLifecycle.html)
  """
  def get_bucket_lifecycle(
        %Client{} = client,
        bucket,
        expected_bucket_owner \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?lifecycle"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Bucket lifecycle configuration now supports specifying a lifecycle rule using an
  object key name prefix, one or more object tags, or a combination of both.

  Accordingly, this section describes the latest API. The response describes the
  new filter element that you can use to specify a filter to select a subset of
  objects to which the rule applies. If you are using a previous version of the
  lifecycle configuration, it still works. For the earlier action, see
  [GetBucketLifecycle](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycle.html). 
  Returns the lifecycle configuration information set on the bucket. For
  information about lifecycle configuration, see [Object Lifecycle
  Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html).

  To use this operation, you must have permission to perform the
  `s3:GetLifecycleConfiguration` action. The bucket owner has this permission, by
  default. The bucket owner can grant this permission to others. For more
  information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  `GetBucketLifecycleConfiguration` has the following special error:

    * Error code: `NoSuchLifecycleConfiguration`

      * Description: The lifecycle configuration does not
  exist.

      * HTTP Status Code: 404 Not Found

      * SOAP Fault Code Prefix: Client

  The following operations are related to `GetBucketLifecycleConfiguration`:

    *
  [GetBucketLifecycle](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycle.html)     *
  [PutBucketLifecycle](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycle.html)

    *
  [DeleteBucketLifecycle](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketLifecycle.html)
  """
  def get_bucket_lifecycle_configuration(
        %Client{} = client,
        bucket,
        expected_bucket_owner \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?lifecycle"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the Region the bucket resides in.

  You set the bucket's Region using the `LocationConstraint` request parameter in
  a `CreateBucket` request. For more information, see
  [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html).  To use this API operation against an access point, provide the alias of the
  access point in place of the bucket name.

  To use this API operation against an Object Lambda access point, provide the
  alias of the Object Lambda access point in place of the bucket name. If the
  Object Lambda access point alias in a request is not valid, the error code
  `InvalidAccessPointAliasError` is returned. For more information about
  `InvalidAccessPointAliasError`, see [List of Error
  Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList).

  We recommend that you use
  [HeadBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_HeadBucket.html) to return the Region that a bucket resides in. For backward compatibility,
  Amazon S3 continues to support GetBucketLocation.

  The following operations are related to `GetBucketLocation`:

    *
  [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)

    *
  [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)
  """
  def get_bucket_location(%Client{} = client, bucket, expected_bucket_owner \\ nil, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?location"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the logging status of a bucket and the permissions users have to view
  and modify that status.

  The following operations are related to `GetBucketLogging`:

    *
  [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)     *
  [PutBucketLogging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLogging.html)
  """
  def get_bucket_logging(%Client{} = client, bucket, expected_bucket_owner \\ nil, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?logging"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets a metrics configuration (specified by the metrics configuration ID) from
  the bucket.

  Note that this doesn't include the daily storage metrics.

  To use this operation, you must have permissions to perform the
  `s3:GetMetricsConfiguration` action. The bucket owner has this permission by
  default. The bucket owner can grant this permission to others. For more
  information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  For information about CloudWatch request metrics for Amazon S3, see [Monitoring Metrics with Amazon
  CloudWatch](https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html).

  The following operations are related to `GetBucketMetricsConfiguration`:

    *
  [PutBucketMetricsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketMetricsConfiguration.html)     *
  [DeleteBucketMetricsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketMetricsConfiguration.html)

    *
  [ListBucketMetricsConfigurations](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketMetricsConfigurations.html)     * [Monitoring Metrics with Amazon
  CloudWatch](https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html)
  """
  def get_bucket_metrics_configuration(
        %Client{} = client,
        bucket,
        id,
        expected_bucket_owner \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?metrics"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(id) do
        [{"id", id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  No longer used, see
  [GetBucketNotificationConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketNotificationConfiguration.html).
  """
  def get_bucket_notification(
        %Client{} = client,
        bucket,
        expected_bucket_owner \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?notification"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the notification configuration of a bucket.

  If notifications are not enabled on the bucket, the action returns an empty
  `NotificationConfiguration` element.

  By default, you must be the bucket owner to read the notification configuration
  of a bucket. However, the bucket owner can use a bucket policy to grant
  permission to other users to read this configuration with the
  `s3:GetBucketNotification` permission.

  To use this API operation against an access point, provide the alias of the
  access point in place of the bucket name.

  To use this API operation against an Object Lambda access point, provide the
  alias of the Object Lambda access point in place of the bucket name. If the
  Object Lambda access point alias in a request is not valid, the error code
  `InvalidAccessPointAliasError` is returned. For more information about
  `InvalidAccessPointAliasError`, see [List of Error Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList).

  For more information about setting and reading the notification configuration on
  a bucket, see [Setting Up Notification of Bucket Events](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html).
  For more information about bucket policies, see [Using Bucket Policies](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html).

  The following action is related to `GetBucketNotification`:

    *
  [PutBucketNotification](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketNotification.html)
  """
  def get_bucket_notification_configuration(
        %Client{} = client,
        bucket,
        expected_bucket_owner \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?notification"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves `OwnershipControls` for an Amazon S3 bucket.

  To use this operation, you must have the `s3:GetBucketOwnershipControls`
  permission. For more information about Amazon S3 permissions, see [Specifying permissions in a
  policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html).

  For information about Amazon S3 Object Ownership, see [Using Object Ownership](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html).

  The following operations are related to `GetBucketOwnershipControls`:

    * `PutBucketOwnershipControls`

    * `DeleteBucketOwnershipControls`
  """
  def get_bucket_ownership_controls(
        %Client{} = client,
        bucket,
        expected_bucket_owner \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?ownershipControls"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the policy of a specified bucket.

  If you are using an identity other than the root user of the Amazon Web Services
  account that owns the bucket, the calling identity must have the
  `GetBucketPolicy` permissions on the specified bucket and belong to the bucket
  owner's account in order to use this operation.

  If you don't have `GetBucketPolicy` permissions, Amazon S3 returns a `403 Access
  Denied` error. If you have the correct permissions, but you're not using an
  identity that belongs to the bucket owner's account, Amazon S3 returns a `405
  Method Not Allowed` error.

  To ensure that bucket owners don't inadvertently lock themselves out of their
  own buckets, the root principal in a bucket owner's Amazon Web Services account
  can perform the `GetBucketPolicy`, `PutBucketPolicy`, and `DeleteBucketPolicy`
  API actions, even if their bucket policy explicitly denies the root principal's
  access. Bucket owner root principals can only be blocked from performing these
  API actions by VPC endpoint policies and Amazon Web Services Organizations
  policies.

  To use this API operation against an access point, provide the alias of the
  access point in place of the bucket name.

  To use this API operation against an Object Lambda access point, provide the
  alias of the Object Lambda access point in place of the bucket name. If the
  Object Lambda access point alias in a request is not valid, the error code
  `InvalidAccessPointAliasError` is returned. For more information about
  `InvalidAccessPointAliasError`, see [List of Error Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList).

  For more information about bucket policies, see [Using Bucket Policies and User Policies](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html).

  The following action is related to `GetBucketPolicy`:

    *
  [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
  """
  def get_bucket_policy(%Client{} = client, bucket, expected_bucket_owner \\ nil, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?policy"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves the policy status for an Amazon S3 bucket, indicating whether the
  bucket is public.

  In order to use this operation, you must have the `s3:GetBucketPolicyStatus`
  permission. For more information about Amazon S3 permissions, see [Specifying Permissions in a
  Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html).

  For more information about when Amazon S3 considers a bucket public, see [The Meaning of
  "Public"](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status).

  The following operations are related to `GetBucketPolicyStatus`:

    * [Using Amazon S3 Block Public Access](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html)

    *
  [GetPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetPublicAccessBlock.html)     *
  [PutPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutPublicAccessBlock.html)

    *
  [DeletePublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeletePublicAccessBlock.html)
  """
  def get_bucket_policy_status(
        %Client{} = client,
        bucket,
        expected_bucket_owner \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?policyStatus"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the replication configuration of a bucket.

  It can take a while to propagate the put or delete a replication configuration
  to all Amazon S3 systems. Therefore, a get request soon after put or delete can
  return a wrong result.

  For information about replication configuration, see
  [Replication](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html) in the *Amazon S3 User Guide*.

  This action requires permissions for the `s3:GetReplicationConfiguration`
  action. For more information about permissions, see [Using Bucket Policies and
  User
  Policies](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html).

  If you include the `Filter` element in a replication configuration, you must
  also include the `DeleteMarkerReplication` and `Priority` elements. The response
  also returns those elements.

  For information about `GetBucketReplication` errors, see [List of replication-related error
  codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ReplicationErrorCodeList)

  The following operations are related to `GetBucketReplication`:

    *
  [PutBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketReplication.html)     *
  [DeleteBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketReplication.html)
  """
  def get_bucket_replication(
        %Client{} = client,
        bucket,
        expected_bucket_owner \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?replication"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the request payment configuration of a bucket.

  To use this version of the operation, you must be the bucket owner. For more
  information, see [Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html).

  The following operations are related to `GetBucketRequestPayment`:

    *
  [ListObjects](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html)
  """
  def get_bucket_request_payment(
        %Client{} = client,
        bucket,
        expected_bucket_owner \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?requestPayment"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the tag set associated with the bucket.

  To use this operation, you must have permission to perform the
  `s3:GetBucketTagging` action. By default, the bucket owner has this permission
  and can grant this permission to others.

  `GetBucketTagging` has the following special error:

    * Error code: `NoSuchTagSet`

      * Description: There is no tag set associated with the
  bucket.

  The following operations are related to `GetBucketTagging`:

    *
  [PutBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketTagging.html)     *
  [DeleteBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketTagging.html)
  """
  def get_bucket_tagging(%Client{} = client, bucket, expected_bucket_owner \\ nil, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?tagging"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the versioning state of a bucket.

  To retrieve the versioning state of a bucket, you must be the bucket owner.

  This implementation also returns the MFA Delete status of the versioning state.
  If the MFA Delete status is `enabled`, the bucket owner must use an
  authentication device to change the versioning state of the bucket.

  The following operations are related to `GetBucketVersioning`:

    *
  [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)     *
  [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

    *
  [DeleteObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)
  """
  def get_bucket_versioning(
        %Client{} = client,
        bucket,
        expected_bucket_owner \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?versioning"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the website configuration for a bucket.

  To host website on Amazon S3, you can configure a bucket as website by adding a
  website configuration. For more information about hosting websites, see [Hosting Websites on Amazon
  S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html).

  This GET action requires the `S3:GetBucketWebsite` permission. By default, only
  the bucket owner can read the bucket website configuration. However, bucket
  owners can allow other users to read the website configuration by writing a
  bucket policy granting them the `S3:GetBucketWebsite` permission.

  The following operations are related to `GetBucketWebsite`:

    *
  [DeleteBucketWebsite](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketWebsite.html)     *
  [PutBucketWebsite](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketWebsite.html)
  """
  def get_bucket_website(%Client{} = client, bucket, expected_bucket_owner \\ nil, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?website"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves objects from Amazon S3.

  To use `GET`, you must have `READ` access to the object. If you grant `READ`
  access to the anonymous user, you can return the object without using an
  authorization header.

  An Amazon S3 bucket has no directory hierarchy such as you would find in a
  typical computer file system. You can, however, create a logical hierarchy by
  using object key names that imply a folder structure. For example, instead of
  naming an object `sample.jpg`, you can name it
  `photos/2006/February/sample.jpg`.

  To get an object from such a logical hierarchy, specify the full key name for
  the object in the `GET` operation. For a virtual hosted-style request example,
  if you have the object `photos/2006/February/sample.jpg`, specify the resource
  as `/photos/2006/February/sample.jpg`. For a path-style request example, if you
  have the object `photos/2006/February/sample.jpg` in the bucket named
  `examplebucket`, specify the resource as
  `/examplebucket/photos/2006/February/sample.jpg`. For more information about
  request types, see [HTTP Host Header Bucket Specification](https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html#VirtualHostingSpecifyBucket).

  For more information about returning the ACL of an object, see
  [GetObjectAcl](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAcl.html).  If the object you are retrieving is stored in the S3 Glacier Flexible Retrieval
  or S3 Glacier Deep Archive storage class, or S3 Intelligent-Tiering Archive or
  S3 Intelligent-Tiering Deep Archive tiers, before you can retrieve the object
  you must first restore a copy using
  [RestoreObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html).
  Otherwise, this action returns an `InvalidObjectState` error. For information
  about restoring archived objects, see [Restoring Archived Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html).

  Encryption request headers, like `x-amz-server-side-encryption`, should not be
  sent for GET requests if your object uses server-side encryption with Key
  Management Service (KMS) keys (SSE-KMS), dual-layer server-side encryption with
  Amazon Web Services KMS keys (DSSE-KMS), or server-side encryption with Amazon
  S3 managed encryption keys (SSE-S3). If your object does use these types of
  keys, you’ll get an HTTP 400 Bad Request error.

  If you encrypt an object by using server-side encryption with customer-provided
  encryption keys (SSE-C) when you store the object in Amazon S3, then when you
  GET the object, you must use the following headers:

    * `x-amz-server-side-encryption-customer-algorithm`

    * `x-amz-server-side-encryption-customer-key`

    * `x-amz-server-side-encryption-customer-key-MD5`

  For more information about SSE-C, see [Server-Side Encryption (Using Customer-Provided Encryption
  Keys)](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html).

  Assuming you have the relevant permission to read object tags, the response also
  returns the `x-amz-tagging-count` header that provides the count of number of
  tags associated with the object. You can use
  [GetObjectTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html) to retrieve the tag set associated with an object.

  ## Definitions

  ### Permissions

  You need the relevant read object (or version) permission for this operation.
  For more information, see [Specifying Permissions in a
  Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html).
  If the object that you request doesn’t exist, the error that Amazon S3 returns
  depends on whether you also have the `s3:ListBucket` permission.

  If you have the `s3:ListBucket` permission on the bucket, Amazon S3 returns an
  HTTP status code 404 (Not Found) error.

  If you don’t have the `s3:ListBucket` permission, Amazon S3 returns an HTTP
  status code 403 ("access denied") error.

  ### Versioning

  By default, the `GET` action returns the current version of an object. To return
  a different version, use the `versionId` subresource.

     If you supply a `versionId`, you need the `s3:GetObjectVersion`
  permission to access a specific version of an object. If you request a specific
  version, you do not need to have the `s3:GetObject` permission. If you request
  the current version without a specific version ID, only `s3:GetObject`
  permission is required. `s3:GetObjectVersion` permission won't be required.

     If the current version of the object is a delete marker, Amazon S3
  behaves as if the object was deleted and includes `x-amz-delete-marker: true` in
  the response.

     If the specified version is a delete marker, the response returns a
  405 (Method Not Allowed) error and the `Last-Modified: timestamp` response
  header.

  For more information about versioning, see
  [PutBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketVersioning.html). 
  ### Overriding Response Header Values

  There are times when you want to override certain response header values in a
  `GET` response. For example, you might override the `Content-Disposition`
  response header value in your `GET` request.

  You can override values for a set of response headers using the following query
  parameters. These response header values are sent only on a successful request,
  that is, when status code 200 OK is returned. The set of headers you can
  override using these parameters is a subset of the headers that Amazon S3
  accepts when you create an object. The response headers that you can override
  for the `GET` response are `Content-Type`, `Content-Language`, `Expires`,
  `Cache-Control`, `Content-Disposition`, and `Content-Encoding`. To override
  these header values in the `GET` response, you use the following request
  parameters.

  You must sign the request, either using an Authorization header or a presigned
  URL, when using these parameters. They cannot be used with an unsigned
  (anonymous) request.

     `response-content-type`

     `response-content-language`

     `response-expires`

     `response-cache-control`

     `response-content-disposition`

     `response-content-encoding`

  ### Overriding Response Header Values

  If both of the `If-Match` and `If-Unmodified-Since` headers are present in the
  request as follows: `If-Match` condition evaluates to `true`, and;
  `If-Unmodified-Since` condition evaluates to `false`; then, S3 returns 200 OK
  and the data requested.

  If both of the `If-None-Match` and `If-Modified-Since` headers are present in
  the request as follows:` If-None-Match` condition evaluates to `false`, and;
  `If-Modified-Since` condition evaluates to `true`; then, S3 returns 304 Not
  Modified response code.

  For more information about conditional requests, see [RFC
  7232](https://tools.ietf.org/html/rfc7232).

  The following operations are related to `GetObject`:

    *
  [ListBuckets](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html)     *
  [GetObjectAcl](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAcl.html)
  """
  def get_object(
        %Client{} = client,
        bucket,
        key,
        part_number \\ nil,
        response_cache_control \\ nil,
        response_content_disposition \\ nil,
        response_content_encoding \\ nil,
        response_content_language \\ nil,
        response_content_type \\ nil,
        response_expires \\ nil,
        version_id \\ nil,
        checksum_mode \\ nil,
        expected_bucket_owner \\ nil,
        if_match \\ nil,
        if_modified_since \\ nil,
        if_none_match \\ nil,
        if_unmodified_since \\ nil,
        range \\ nil,
        request_payer \\ nil,
        sse_customer_algorithm \\ nil,
        sse_customer_key \\ nil,
        sse_customer_key_md5 \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}"
    headers = []

    headers =
      if !is_nil(checksum_mode) do
        [{"x-amz-checksum-mode", checksum_mode} | headers]
      else
        headers
      end

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    headers =
      if !is_nil(if_match) do
        [{"If-Match", if_match} | headers]
      else
        headers
      end

    headers =
      if !is_nil(if_modified_since) do
        [{"If-Modified-Since", if_modified_since} | headers]
      else
        headers
      end

    headers =
      if !is_nil(if_none_match) do
        [{"If-None-Match", if_none_match} | headers]
      else
        headers
      end

    headers =
      if !is_nil(if_unmodified_since) do
        [{"If-Unmodified-Since", if_unmodified_since} | headers]
      else
        headers
      end

    headers =
      if !is_nil(range) do
        [{"Range", range} | headers]
      else
        headers
      end

    headers =
      if !is_nil(request_payer) do
        [{"x-amz-request-payer", request_payer} | headers]
      else
        headers
      end

    headers =
      if !is_nil(sse_customer_algorithm) do
        [{"x-amz-server-side-encryption-customer-algorithm", sse_customer_algorithm} | headers]
      else
        headers
      end

    headers =
      if !is_nil(sse_customer_key) do
        [{"x-amz-server-side-encryption-customer-key", sse_customer_key} | headers]
      else
        headers
      end

    headers =
      if !is_nil(sse_customer_key_md5) do
        [{"x-amz-server-side-encryption-customer-key-MD5", sse_customer_key_md5} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(version_id) do
        [{"versionId", version_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(response_expires) do
        [{"response-expires", response_expires} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(response_content_type) do
        [{"response-content-type", response_content_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(response_content_language) do
        [{"response-content-language", response_content_language} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(response_content_encoding) do
        [{"response-content-encoding", response_content_encoding} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(response_content_disposition) do
        [{"response-content-disposition", response_content_disposition} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(response_cache_control) do
        [{"response-cache-control", response_cache_control} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(part_number) do
        [{"partNumber", part_number} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-checksum-crc32c", "ChecksumCRC32C"},
          {"x-amz-delete-marker", "DeleteMarker"},
          {"x-amz-object-lock-retain-until-date", "ObjectLockRetainUntilDate"},
          {"x-amz-restore", "Restore"},
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"Content-Type", "ContentType"},
          {"x-amz-server-side-encryption-customer-key-MD5", "SSECustomerKeyMD5"},
          {"x-amz-object-lock-legal-hold", "ObjectLockLegalHoldStatus"},
          {"x-amz-version-id", "VersionId"},
          {"accept-ranges", "AcceptRanges"},
          {"x-amz-website-redirect-location", "WebsiteRedirectLocation"},
          {"Content-Language", "ContentLanguage"},
          {"x-amz-server-side-encryption-customer-algorithm", "SSECustomerAlgorithm"},
          {"Content-Encoding", "ContentEncoding"},
          {"x-amz-checksum-sha256", "ChecksumSHA256"},
          {"ETag", "ETag"},
          {"Last-Modified", "LastModified"},
          {"Content-Range", "ContentRange"},
          {"Expires", "Expires"},
          {"x-amz-tagging-count", "TagCount"},
          {"x-amz-expiration", "Expiration"},
          {"x-amz-replication-status", "ReplicationStatus"},
          {"Cache-Control", "CacheControl"},
          {"x-amz-storage-class", "StorageClass"},
          {"x-amz-missing-meta", "MissingMeta"},
          {"Content-Length", "ContentLength"},
          {"x-amz-object-lock-mode", "ObjectLockMode"},
          {"Content-Disposition", "ContentDisposition"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"},
          {"x-amz-mp-parts-count", "PartsCount"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-checksum-crc32", "ChecksumCRC32"},
          {"x-amz-checksum-sha1", "ChecksumSHA1"}
        ]
      )

    options =
      Keyword.put(
        options,
        :receive_body_as_binary?,
        true
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the access control list (ACL) of an object.

  To use this operation, you must have `s3:GetObjectAcl` permissions or `READ_ACP`
  access to the object. For more information, see [Mapping of ACL permissions and access policy
  permissions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#acl-access-policy-permission-mapping)
  in the *Amazon S3 User Guide*

  This action is not supported by Amazon S3 on Outposts.

  By default, GET returns ACL information about the current version of an object.
  To return ACL information about a different version, use the versionId
  subresource.

  If your bucket uses the bucket owner enforced setting for S3 Object Ownership,
  requests to read ACLs are still supported and return the
  `bucket-owner-full-control` ACL with the owner being the account that created
  the bucket. For more information, see [ Controlling object ownership and disabling
  ACLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html)
  in the *Amazon S3 User Guide*.

  The following operations are related to `GetObjectAcl`:

    *
  [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)     *
  [GetObjectAttributes](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html)

    *
  [DeleteObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)     *
  [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)
  """
  def get_object_acl(
        %Client{} = client,
        bucket,
        key,
        version_id \\ nil,
        expected_bucket_owner \\ nil,
        request_payer \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?acl"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    headers =
      if !is_nil(request_payer) do
        [{"x-amz-request-payer", request_payer} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(version_id) do
        [{"versionId", version_id} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves all the metadata from an object without returning the object itself.

  This action is useful if you're interested only in an object's metadata. To use
  `GetObjectAttributes`, you must have READ access to the object.

  `GetObjectAttributes` combines the functionality of `HeadObject` and
  `ListParts`. All of the data returned with each of those individual calls can be
  returned with a single call to `GetObjectAttributes`.

  If you encrypt an object by using server-side encryption with customer-provided
  encryption keys (SSE-C) when you store the object in Amazon S3, then when you
  retrieve the metadata from the object, you must use the following headers:

    * `x-amz-server-side-encryption-customer-algorithm`

    * `x-amz-server-side-encryption-customer-key`

    * `x-amz-server-side-encryption-customer-key-MD5`

  For more information about SSE-C, see [Server-Side Encryption (Using Customer-Provided Encryption
  Keys)](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html)
  in the *Amazon S3 User Guide*.

     Encryption request headers, such as `x-amz-server-side-encryption`,
  should not be sent for GET requests if your object uses server-side encryption
  with Amazon Web Services KMS keys stored in Amazon Web Services Key Management
  Service (SSE-KMS) or server-side encryption with Amazon S3 managed keys
  (SSE-S3). If your object does use these types of keys, you'll get an HTTP `400
  Bad Request` error.

     The last modified property in this case is the creation date of the
  object.

  Consider the following when using request headers:

    * If both of the `If-Match` and `If-Unmodified-Since` headers are
  present in the request as follows, then Amazon S3 returns the HTTP status code
  `200 OK` and the data requested:

      * `If-Match` condition evaluates to `true`.

      * `If-Unmodified-Since` condition evaluates to `false`.

    * If both of the `If-None-Match` and `If-Modified-Since` headers are
  present in the request as follows, then Amazon S3 returns the HTTP status code
  `304 Not Modified`:

      * `If-None-Match` condition evaluates to `false`.

      * `If-Modified-Since` condition evaluates to `true`.

  For more information about conditional requests, see [RFC 7232](https://tools.ietf.org/html/rfc7232).

  ## Definitions

  ### Permissions

  The permissions that you need to use this operation depend on whether the bucket
  is versioned. If the bucket is versioned, you need both the
  `s3:GetObjectVersion` and `s3:GetObjectVersionAttributes` permissions for this
  operation. If the bucket is not versioned, you need the `s3:GetObject` and
  `s3:GetObjectAttributes` permissions. For more information, see [Specifying Permissions in a
  Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html)
  in the *Amazon S3 User Guide*. If the object that you request does not exist,
  the error Amazon S3 returns depends on whether you also have the `s3:ListBucket`
  permission.

     If you have the `s3:ListBucket` permission on the bucket, Amazon S3
  returns an HTTP status code `404 Not Found` ("no such key") error.

     If you don't have the `s3:ListBucket` permission, Amazon S3 returns
  an HTTP status code `403 Forbidden` ("access denied") error.

  The following actions are related to `GetObjectAttributes`:

    *
  [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)     *
  [GetObjectAcl](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAcl.html)

    *
  [GetObjectLegalHold](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectLegalHold.html)     *
  [GetObjectLockConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectLockConfiguration.html)

    *
  [GetObjectRetention](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectRetention.html)     *
  [GetObjectTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html)

    *
  [HeadObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_HeadObject.html)     *
  [ListParts](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)
  """
  def get_object_attributes(
        %Client{} = client,
        bucket,
        key,
        version_id \\ nil,
        expected_bucket_owner \\ nil,
        max_parts \\ nil,
        object_attributes,
        part_number_marker \\ nil,
        request_payer \\ nil,
        sse_customer_algorithm \\ nil,
        sse_customer_key \\ nil,
        sse_customer_key_md5 \\ nil,
        options \\ []
      ) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?attributes"

    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    headers =
      if !is_nil(max_parts) do
        [{"x-amz-max-parts", max_parts} | headers]
      else
        headers
      end

    headers =
      if !is_nil(object_attributes) do
        [{"x-amz-object-attributes", object_attributes} | headers]
      else
        headers
      end

    headers =
      if !is_nil(part_number_marker) do
        [{"x-amz-part-number-marker", part_number_marker} | headers]
      else
        headers
      end

    headers =
      if !is_nil(request_payer) do
        [{"x-amz-request-payer", request_payer} | headers]
      else
        headers
      end

    headers =
      if !is_nil(sse_customer_algorithm) do
        [{"x-amz-server-side-encryption-customer-algorithm", sse_customer_algorithm} | headers]
      else
        headers
      end

    headers =
      if !is_nil(sse_customer_key) do
        [{"x-amz-server-side-encryption-customer-key", sse_customer_key} | headers]
      else
        headers
      end

    headers =
      if !is_nil(sse_customer_key_md5) do
        [{"x-amz-server-side-encryption-customer-key-MD5", sse_customer_key_md5} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(version_id) do
        [{"versionId", version_id} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-delete-marker", "DeleteMarker"},
          {"Last-Modified", "LastModified"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-version-id", "VersionId"}
        ]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets an object's current legal hold status.

  For more information, see [Locking Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).

  This action is not supported by Amazon S3 on Outposts.

  The following action is related to `GetObjectLegalHold`:

    *
  [GetObjectAttributes](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html)
  """
  def get_object_legal_hold(
        %Client{} = client,
        bucket,
        key,
        version_id \\ nil,
        expected_bucket_owner \\ nil,
        request_payer \\ nil,
        options \\ []
      ) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?legal-hold"

    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    headers =
      if !is_nil(request_payer) do
        [{"x-amz-request-payer", request_payer} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(version_id) do
        [{"versionId", version_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets the Object Lock configuration for a bucket.

  The rule specified in the Object Lock configuration will be applied by default
  to every new object placed in the specified bucket. For more information, see
  [Locking Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).

  The following action is related to `GetObjectLockConfiguration`:

    *
  [GetObjectAttributes](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html)
  """
  def get_object_lock_configuration(
        %Client{} = client,
        bucket,
        expected_bucket_owner \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?object-lock"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves an object's retention settings.

  For more information, see [Locking Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).

  This action is not supported by Amazon S3 on Outposts.

  The following action is related to `GetObjectRetention`:

    *
  [GetObjectAttributes](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html)
  """
  def get_object_retention(
        %Client{} = client,
        bucket,
        key,
        version_id \\ nil,
        expected_bucket_owner \\ nil,
        request_payer \\ nil,
        options \\ []
      ) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?retention"

    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    headers =
      if !is_nil(request_payer) do
        [{"x-amz-request-payer", request_payer} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(version_id) do
        [{"versionId", version_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the tag-set of an object.

  You send the GET request against the tagging subresource associated with the
  object.

  To use this operation, you must have permission to perform the
  `s3:GetObjectTagging` action. By default, the GET action returns information
  about current version of an object. For a versioned bucket, you can have
  multiple versions of an object in your bucket. To retrieve tags of any other
  version, use the versionId query parameter. You also need permission for the
  `s3:GetObjectVersionTagging` action.

  By default, the bucket owner has this permission and can grant this permission
  to others.

  For information about the Amazon S3 object tagging feature, see [Object Tagging](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-tagging.html).

  The following actions are related to `GetObjectTagging`:

    *
  [DeleteObjectTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObjectTagging.html)     *
  [GetObjectAttributes](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html)

    *
  [PutObjectTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObjectTagging.html)
  """
  def get_object_tagging(
        %Client{} = client,
        bucket,
        key,
        version_id \\ nil,
        expected_bucket_owner \\ nil,
        request_payer \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?tagging"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    headers =
      if !is_nil(request_payer) do
        [{"x-amz-request-payer", request_payer} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(version_id) do
        [{"versionId", version_id} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-version-id", "VersionId"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns torrent files from a bucket.

  BitTorrent can save you bandwidth when you're distributing large files.

  You can get torrent only for objects that are less than 5 GB in size, and that
  are not encrypted using server-side encryption with a customer-provided
  encryption key.

  To use GET, you must have READ access to the object.

  This action is not supported by Amazon S3 on Outposts.

  The following action is related to `GetObjectTorrent`:

    *
  [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
  """
  def get_object_torrent(
        %Client{} = client,
        bucket,
        key,
        expected_bucket_owner \\ nil,
        request_payer \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?torrent"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    headers =
      if !is_nil(request_payer) do
        [{"x-amz-request-payer", request_payer} | headers]
      else
        headers
      end

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    options =
      Keyword.put(
        options,
        :receive_body_as_binary?,
        true
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves the `PublicAccessBlock` configuration for an Amazon S3 bucket.

  To use this operation, you must have the `s3:GetBucketPublicAccessBlock`
  permission. For more information about Amazon S3 permissions, see [Specifying Permissions in a
  Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html).

  When Amazon S3 evaluates the `PublicAccessBlock` configuration for a bucket or
  an object, it checks the `PublicAccessBlock` configuration for both the bucket
  (or the bucket that contains the object) and the bucket owner's account. If the
  `PublicAccessBlock` settings are different between the bucket and the account,
  Amazon S3 uses the most restrictive combination of the bucket-level and
  account-level settings.

  For more information about when Amazon S3 considers a bucket or an object
  public, see [The Meaning of "Public"](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status).

  The following operations are related to `GetPublicAccessBlock`:

    * [Using Amazon S3 Block Public Access](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html)

    *
  [PutPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutPublicAccessBlock.html)     *
  [GetPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetPublicAccessBlock.html)

    *
  [DeletePublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeletePublicAccessBlock.html)
  """
  def get_public_access_block(
        %Client{} = client,
        bucket,
        expected_bucket_owner \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?publicAccessBlock"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  This action is useful to determine if a bucket exists and you have permission to
  access it.

  The action returns a `200 OK` if the bucket exists and you have permission to
  access it.

  If the bucket does not exist or you do not have permission to access it, the
  `HEAD` request returns a generic `400 Bad Request`, `403 Forbidden` or `404 Not
  Found` code. A message body is not included, so you cannot determine the
  exception beyond these error codes.

  To use this operation, you must have permissions to perform the `s3:ListBucket`
  action. The bucket owner has this permission by default and can grant this
  permission to others. For more information about permissions, see [Permissions Related to Bucket Subresource
  Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  To use this API operation against an access point, you must provide the alias of
  the access point in place of the bucket name or specify the access point ARN.
  When using the access point ARN, you must direct requests to the access point
  hostname. The access point hostname takes the form
  *AccessPointName*-*AccountId*.s3-accesspoint.*Region*.amazonaws.com. When using
  the Amazon Web Services SDKs, you provide the ARN in place of the bucket name.
  For more information, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html).

  To use this API operation against an Object Lambda access point, provide the
  alias of the Object Lambda access point in place of the bucket name. If the
  Object Lambda access point alias in a request is not valid, the error code
  `InvalidAccessPointAliasError` is returned. For more information about
  `InvalidAccessPointAliasError`, see [List of Error Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList).
  """
  def head_bucket(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}"

    {headers, input} =
      [
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :head,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  The `HEAD` action retrieves metadata from an object without returning the object
  itself.

  This action is useful if you're only interested in an object's metadata. To use
  `HEAD`, you must have READ access to the object.

  A `HEAD` request has the same options as a `GET` action on an object. The
  response is identical to the `GET` response except that there is no response
  body. Because of this, if the `HEAD` request generates an error, it returns a
  generic code, such as `400 Bad Request`, `403 Forbidden`, `404 Not Found`, `405
  Method Not Allowed`, `412 Precondition Failed`, or `304 Not Modified`. It's not
  possible to retrieve the exact exception of these error codes.

  If you encrypt an object by using server-side encryption with customer-provided
  encryption keys (SSE-C) when you store the object in Amazon S3, then when you
  retrieve the metadata from the object, you must use the following headers:

    * `x-amz-server-side-encryption-customer-algorithm`

    * `x-amz-server-side-encryption-customer-key`

    * `x-amz-server-side-encryption-customer-key-MD5`

  For more information about SSE-C, see [Server-Side Encryption (Using Customer-Provided Encryption
  Keys)](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html).

     Encryption request headers, like `x-amz-server-side-encryption`,
  should not be sent for `GET` requests if your object uses server-side encryption
  with Key Management Service (KMS) keys (SSE-KMS), dual-layer server-side
  encryption with Amazon Web Services KMS keys (DSSE-KMS), or server-side
  encryption with Amazon S3 managed encryption keys (SSE-S3). If your object does
  use these types of keys, you’ll get an HTTP 400 Bad Request error.

     The last modified property in this case is the creation date of the
  object.

  Request headers are limited to 8 KB in size. For more information, see [Common Request
  Headers](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTCommonRequestHeaders.html).

  Consider the following when using request headers:

    * Consideration 1 – If both of the `If-Match` and
  `If-Unmodified-Since` headers are present in the request as follows:

      * `If-Match` condition evaluates to `true`, and;

      * `If-Unmodified-Since` condition evaluates to `false`;

  Then Amazon S3 returns `200 OK` and the data requested.

    * Consideration 2 – If both of the `If-None-Match` and
  `If-Modified-Since` headers are present in the request as follows:

      * `If-None-Match` condition evaluates to `false`, and;

      * `If-Modified-Since` condition evaluates to `true`;

  Then Amazon S3 returns the `304 Not Modified` response code.

  For more information about conditional requests, see [RFC 7232](https://tools.ietf.org/html/rfc7232).

  ## Definitions

  ### Permissions

  You need the relevant read object (or version) permission for this operation.
  For more information, see [Actions, resources, and condition keys for Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/list_amazons3.html). If the
  object you request doesn't exist, the error that Amazon S3 returns depends on
  whether you also have the s3:ListBucket permission.

     If you have the `s3:ListBucket` permission on the bucket, Amazon S3
  returns an HTTP status code 404 error.

     If you don’t have the `s3:ListBucket` permission, Amazon S3 returns
  an HTTP status code 403 error.

  ### Versioning

     If the current version of the object is a delete marker, Amazon S3
  behaves as if the object was deleted and includes `x-amz-delete-marker: true` in
  the response.

     If the specified version is a delete marker, the response returns a
  405 (Method Not Allowed) error and the `Last-Modified: timestamp` response
  header.

  The following actions are related to `HeadObject`:

    *
  [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)     *
  [GetObjectAttributes](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html)
  """
  def head_object(%Client{} = client, bucket, key, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}"

    {headers, input} =
      [
        {"ChecksumMode", "x-amz-checksum-mode"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"},
        {"IfMatch", "If-Match"},
        {"IfModifiedSince", "If-Modified-Since"},
        {"IfNoneMatch", "If-None-Match"},
        {"IfUnmodifiedSince", "If-Unmodified-Since"},
        {"Range", "Range"},
        {"RequestPayer", "x-amz-request-payer"},
        {"SSECustomerAlgorithm", "x-amz-server-side-encryption-customer-algorithm"},
        {"SSECustomerKey", "x-amz-server-side-encryption-customer-key"},
        {"SSECustomerKeyMD5", "x-amz-server-side-encryption-customer-key-MD5"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"PartNumber", "partNumber"},
        {"VersionId", "versionId"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-checksum-crc32c", "ChecksumCRC32C"},
          {"x-amz-delete-marker", "DeleteMarker"},
          {"x-amz-object-lock-retain-until-date", "ObjectLockRetainUntilDate"},
          {"x-amz-restore", "Restore"},
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"Content-Type", "ContentType"},
          {"x-amz-server-side-encryption-customer-key-MD5", "SSECustomerKeyMD5"},
          {"x-amz-object-lock-legal-hold", "ObjectLockLegalHoldStatus"},
          {"x-amz-version-id", "VersionId"},
          {"accept-ranges", "AcceptRanges"},
          {"x-amz-website-redirect-location", "WebsiteRedirectLocation"},
          {"Content-Language", "ContentLanguage"},
          {"x-amz-server-side-encryption-customer-algorithm", "SSECustomerAlgorithm"},
          {"Content-Encoding", "ContentEncoding"},
          {"x-amz-checksum-sha256", "ChecksumSHA256"},
          {"ETag", "ETag"},
          {"x-amz-archive-status", "ArchiveStatus"},
          {"Last-Modified", "LastModified"},
          {"Expires", "Expires"},
          {"x-amz-expiration", "Expiration"},
          {"x-amz-replication-status", "ReplicationStatus"},
          {"Cache-Control", "CacheControl"},
          {"x-amz-storage-class", "StorageClass"},
          {"x-amz-missing-meta", "MissingMeta"},
          {"Content-Length", "ContentLength"},
          {"x-amz-object-lock-mode", "ObjectLockMode"},
          {"Content-Disposition", "ContentDisposition"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"},
          {"x-amz-mp-parts-count", "PartsCount"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-checksum-crc32", "ChecksumCRC32"},
          {"x-amz-checksum-sha1", "ChecksumSHA1"}
        ]
      )

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :head,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Lists the analytics configurations for the bucket.

  You can have up to 1,000 analytics configurations per bucket.

  This action supports list pagination and does not return more than 100
  configurations at a time. You should always check the `IsTruncated` element in
  the response. If there are no more configurations to list, `IsTruncated` is set
  to false. If there are more configurations to list, `IsTruncated` is set to
  true, and there will be a value in `NextContinuationToken`. You use the
  `NextContinuationToken` value to continue the pagination of the list by passing
  the value in continuation-token in the request to `GET` the next page.

  To use this operation, you must have permissions to perform the
  `s3:GetAnalyticsConfiguration` action. The bucket owner has this permission by
  default. The bucket owner can grant this permission to others. For more
  information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  For information about Amazon S3 analytics feature, see [Amazon S3 Analytics – Storage Class
  Analysis](https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html).

  The following operations are related to `ListBucketAnalyticsConfigurations`:

    *
  [GetBucketAnalyticsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketAnalyticsConfiguration.html)     *
  [DeleteBucketAnalyticsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketAnalyticsConfiguration.html)

    *
  [PutBucketAnalyticsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketAnalyticsConfiguration.html)
  """
  def list_bucket_analytics_configurations(
        %Client{} = client,
        bucket,
        continuation_token \\ nil,
        expected_bucket_owner \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?analytics"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(continuation_token) do
        [{"continuation-token", continuation_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists the S3 Intelligent-Tiering configuration from the specified bucket.

  The S3 Intelligent-Tiering storage class is designed to optimize storage costs
  by automatically moving data to the most cost-effective storage access tier,
  without performance impact or operational overhead. S3 Intelligent-Tiering
  delivers automatic cost savings in three low latency and high throughput access
  tiers. To get the lowest storage cost on data that can be accessed in minutes to
  hours, you can choose to activate additional archiving capabilities.

  The S3 Intelligent-Tiering storage class is the ideal storage class for data
  with unknown, changing, or unpredictable access patterns, independent of object
  size or retention period. If the size of an object is less than 128 KB, it is
  not monitored and not eligible for auto-tiering. Smaller objects can be stored,
  but they are always charged at the Frequent Access tier rates in the S3
  Intelligent-Tiering storage class.

  For more information, see [Storage class for automatically optimizing frequently and infrequently accessed
  objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access).

  Operations related to `ListBucketIntelligentTieringConfigurations` include:

    *
  [DeleteBucketIntelligentTieringConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketIntelligentTieringConfiguration.html)     *
  [PutBucketIntelligentTieringConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketIntelligentTieringConfiguration.html)

    *
  [GetBucketIntelligentTieringConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketIntelligentTieringConfiguration.html)
  """
  def list_bucket_intelligent_tiering_configurations(
        %Client{} = client,
        bucket,
        continuation_token \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?intelligent-tiering"
    headers = []
    query_params = []

    query_params =
      if !is_nil(continuation_token) do
        [{"continuation-token", continuation_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of inventory configurations for the bucket.

  You can have up to 1,000 analytics configurations per bucket.

  This action supports list pagination and does not return more than 100
  configurations at a time. Always check the `IsTruncated` element in the
  response. If there are no more configurations to list, `IsTruncated` is set to
  false. If there are more configurations to list, `IsTruncated` is set to true,
  and there is a value in `NextContinuationToken`. You use the
  `NextContinuationToken` value to continue the pagination of the list by passing
  the value in continuation-token in the request to `GET` the next page.

  To use this operation, you must have permissions to perform the
  `s3:GetInventoryConfiguration` action. The bucket owner has this permission by
  default. The bucket owner can grant this permission to others. For more
  information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  For information about the Amazon S3 inventory feature, see [Amazon S3 Inventory](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html)

  The following operations are related to `ListBucketInventoryConfigurations`:

    *
  [GetBucketInventoryConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketInventoryConfiguration.html)     *
  [DeleteBucketInventoryConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketInventoryConfiguration.html)

    *
  [PutBucketInventoryConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketInventoryConfiguration.html)
  """
  def list_bucket_inventory_configurations(
        %Client{} = client,
        bucket,
        continuation_token \\ nil,
        expected_bucket_owner \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?inventory"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(continuation_token) do
        [{"continuation-token", continuation_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists the metrics configurations for the bucket.

  The metrics configurations are only for the request metrics of the bucket and do
  not provide information on daily storage metrics. You can have up to 1,000
  configurations per bucket.

  This action supports list pagination and does not return more than 100
  configurations at a time. Always check the `IsTruncated` element in the
  response. If there are no more configurations to list, `IsTruncated` is set to
  false. If there are more configurations to list, `IsTruncated` is set to true,
  and there is a value in `NextContinuationToken`. You use the
  `NextContinuationToken` value to continue the pagination of the list by passing
  the value in `continuation-token` in the request to `GET` the next page.

  To use this operation, you must have permissions to perform the
  `s3:GetMetricsConfiguration` action. The bucket owner has this permission by
  default. The bucket owner can grant this permission to others. For more
  information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  For more information about metrics configurations and CloudWatch request
  metrics, see [Monitoring Metrics with Amazon CloudWatch](https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html).

  The following operations are related to `ListBucketMetricsConfigurations`:

    *
  [PutBucketMetricsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketMetricsConfiguration.html)     *
  [GetBucketMetricsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketMetricsConfiguration.html)

    *
  [DeleteBucketMetricsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketMetricsConfiguration.html)
  """
  def list_bucket_metrics_configurations(
        %Client{} = client,
        bucket,
        continuation_token \\ nil,
        expected_bucket_owner \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?metrics"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(continuation_token) do
        [{"continuation-token", continuation_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of all buckets owned by the authenticated sender of the request.

  To use this operation, you must have the `s3:ListAllMyBuckets` permission.

  For information about Amazon S3 buckets, see [Creating, configuring, and working with Amazon S3
  buckets](https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-buckets-s3.html).
  """
  def list_buckets(%Client{} = client, options \\ []) do
    url_path = "/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  This action lists in-progress multipart uploads.

  An in-progress multipart upload is a multipart upload that has been initiated
  using the Initiate Multipart Upload request, but has not yet been completed or
  aborted.

  This action returns at most 1,000 multipart uploads in the response. 1,000
  multipart uploads is the maximum number of uploads a response can include, which
  is also the default value. You can further limit the number of uploads in a
  response by specifying the `max-uploads` parameter in the response. If
  additional multipart uploads satisfy the list criteria, the response will
  contain an `IsTruncated` element with the value true. To list the additional
  multipart uploads, use the `key-marker` and `upload-id-marker` request
  parameters.

  In the response, the uploads are sorted by key. If your application has
  initiated more than one multipart upload using the same object key, then uploads
  in the response are first sorted by key. Additionally, uploads are sorted in
  ascending order within each key by the upload initiation time.

  For more information on multipart uploads, see [Uploading Objects Using Multipart
  Upload](https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html).

  For information on permissions required to use the multipart upload API, see
  [Multipart Upload and Permissions](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html).

  The following operations are related to `ListMultipartUploads`:

    *
  [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)     *
  [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)

    *
  [CompleteMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)     *
  [ListParts](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)

    *
  [AbortMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)
  """
  def list_multipart_uploads(
        %Client{} = client,
        bucket,
        delimiter \\ nil,
        encoding_type \\ nil,
        key_marker \\ nil,
        max_uploads \\ nil,
        prefix \\ nil,
        upload_id_marker \\ nil,
        expected_bucket_owner \\ nil,
        request_payer \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?uploads"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    headers =
      if !is_nil(request_payer) do
        [{"x-amz-request-payer", request_payer} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(upload_id_marker) do
        [{"upload-id-marker", upload_id_marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(prefix) do
        [{"prefix", prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_uploads) do
        [{"max-uploads", max_uploads} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(key_marker) do
        [{"key-marker", key_marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(encoding_type) do
        [{"encoding-type", encoding_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(delimiter) do
        [{"delimiter", delimiter} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns metadata about all versions of the objects in a bucket.

  You can also use request parameters as selection criteria to return metadata
  about a subset of all the object versions.

  To use this operation, you must have permission to perform the
  `s3:ListBucketVersions` action. Be aware of the name difference.

  A `200 OK` response can contain valid or invalid XML. Make sure to design your
  application to parse the contents of the response and handle it appropriately.

  To use this operation, you must have READ access to the bucket.

  The following operations are related to `ListObjectVersions`:

    *
  [ListObjectsV2](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjectsV2.html)     *
  [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)

    *
  [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)     *
  [DeleteObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)
  """
  def list_object_versions(
        %Client{} = client,
        bucket,
        delimiter \\ nil,
        encoding_type \\ nil,
        key_marker \\ nil,
        max_keys \\ nil,
        prefix \\ nil,
        version_id_marker \\ nil,
        expected_bucket_owner \\ nil,
        optional_object_attributes \\ nil,
        request_payer \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?versions"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    headers =
      if !is_nil(optional_object_attributes) do
        [{"x-amz-optional-object-attributes", optional_object_attributes} | headers]
      else
        headers
      end

    headers =
      if !is_nil(request_payer) do
        [{"x-amz-request-payer", request_payer} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(version_id_marker) do
        [{"version-id-marker", version_id_marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(prefix) do
        [{"prefix", prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_keys) do
        [{"max-keys", max_keys} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(key_marker) do
        [{"key-marker", key_marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(encoding_type) do
        [{"encoding-type", encoding_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(delimiter) do
        [{"delimiter", delimiter} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns some or all (up to 1,000) of the objects in a bucket.

  You can use the request parameters as selection criteria to return a subset of
  the objects in a bucket. A 200 OK response can contain valid or invalid XML. Be
  sure to design your application to parse the contents of the response and handle
  it appropriately.

  This action has been revised. We recommend that you use the newer version,
  [ListObjectsV2](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjectsV2.html), when developing applications. For backward compatibility, Amazon S3 continues to
  support `ListObjects`.

  The following operations are related to `ListObjects`:

    *
  [ListObjectsV2](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjectsV2.html)

    *
  [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)     *
  [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

    *
  [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)     *
  [ListBuckets](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html)
  """
  def list_objects(
        %Client{} = client,
        bucket,
        delimiter \\ nil,
        encoding_type \\ nil,
        marker \\ nil,
        max_keys \\ nil,
        prefix \\ nil,
        expected_bucket_owner \\ nil,
        optional_object_attributes \\ nil,
        request_payer \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    headers =
      if !is_nil(optional_object_attributes) do
        [{"x-amz-optional-object-attributes", optional_object_attributes} | headers]
      else
        headers
      end

    headers =
      if !is_nil(request_payer) do
        [{"x-amz-request-payer", request_payer} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(prefix) do
        [{"prefix", prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_keys) do
        [{"max-keys", max_keys} | query_params]
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
      if !is_nil(encoding_type) do
        [{"encoding-type", encoding_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(delimiter) do
        [{"delimiter", delimiter} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns some or all (up to 1,000) of the objects in a bucket with each request.

  You can use the request parameters as selection criteria to return a subset of
  the objects in a bucket. A `200 OK` response can contain valid or invalid XML.
  Make sure to design your application to parse the contents of the response and
  handle it appropriately. Objects are returned sorted in an ascending order of
  the respective key names in the list. For more information about listing
  objects, see [Listing object keys programmatically](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ListingKeysUsingAPIs.html)
  in the *Amazon S3 User Guide*.

  To use this operation, you must have READ access to the bucket.

  To use this action in an Identity and Access Management (IAM) policy, you must
  have permission to perform the `s3:ListBucket` action. The bucket owner has this
  permission by default and can grant this permission to others. For more
  information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
  in the *Amazon S3 User Guide*.

  This section describes the latest revision of this action. We recommend that you
  use this revised API operation for application development. For backward
  compatibility, Amazon S3 continues to support the prior version of this API
  operation,
  [ListObjects](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html). 
  To get a list of your buckets, see
  [ListBuckets](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html).

  The following operations are related to `ListObjectsV2`:

    *
  [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)     *
  [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

    *
  [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)
  """
  def list_objects_v2(
        %Client{} = client,
        bucket,
        continuation_token \\ nil,
        delimiter \\ nil,
        encoding_type \\ nil,
        fetch_owner \\ nil,
        max_keys \\ nil,
        prefix \\ nil,
        start_after \\ nil,
        expected_bucket_owner \\ nil,
        optional_object_attributes \\ nil,
        request_payer \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?list-type=2"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    headers =
      if !is_nil(optional_object_attributes) do
        [{"x-amz-optional-object-attributes", optional_object_attributes} | headers]
      else
        headers
      end

    headers =
      if !is_nil(request_payer) do
        [{"x-amz-request-payer", request_payer} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(start_after) do
        [{"start-after", start_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(prefix) do
        [{"prefix", prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_keys) do
        [{"max-keys", max_keys} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(fetch_owner) do
        [{"fetch-owner", fetch_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(encoding_type) do
        [{"encoding-type", encoding_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(delimiter) do
        [{"delimiter", delimiter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(continuation_token) do
        [{"continuation-token", continuation_token} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists the parts that have been uploaded for a specific multipart upload.

  This operation must include the upload ID, which you obtain by sending the
  initiate multipart upload request (see
  [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)). This request returns a maximum of 1,000 uploaded parts. The default number of
  parts returned is 1,000 parts. You can restrict the number of parts returned by
  specifying the `max-parts` request parameter. If your multipart upload consists
  of more than 1,000 parts, the response returns an `IsTruncated` field with the
  value of true, and a `NextPartNumberMarker` element. In subsequent `ListParts`
  requests you can include the part-number-marker query string parameter and set
  its value to the `NextPartNumberMarker` field value from the previous response.

  If the upload was created using a checksum algorithm, you will need to have
  permission to the `kms:Decrypt` action for the request to succeed.

  For more information on multipart uploads, see [Uploading Objects Using
  Multipart
  Upload](https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html).

  For information on permissions required to use the multipart upload API, see
  [Multipart Upload and Permissions](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html).

  The following operations are related to `ListParts`:

    *
  [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)     *
  [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)

    *
  [CompleteMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)     *
  [AbortMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)

    *
  [GetObjectAttributes](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html)     *
  [ListMultipartUploads](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html)
  """
  def list_parts(
        %Client{} = client,
        bucket,
        key,
        max_parts \\ nil,
        part_number_marker \\ nil,
        upload_id,
        expected_bucket_owner \\ nil,
        request_payer \\ nil,
        sse_customer_algorithm \\ nil,
        sse_customer_key \\ nil,
        sse_customer_key_md5 \\ nil,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}"
    headers = []

    headers =
      if !is_nil(expected_bucket_owner) do
        [{"x-amz-expected-bucket-owner", expected_bucket_owner} | headers]
      else
        headers
      end

    headers =
      if !is_nil(request_payer) do
        [{"x-amz-request-payer", request_payer} | headers]
      else
        headers
      end

    headers =
      if !is_nil(sse_customer_algorithm) do
        [{"x-amz-server-side-encryption-customer-algorithm", sse_customer_algorithm} | headers]
      else
        headers
      end

    headers =
      if !is_nil(sse_customer_key) do
        [{"x-amz-server-side-encryption-customer-key", sse_customer_key} | headers]
      else
        headers
      end

    headers =
      if !is_nil(sse_customer_key_md5) do
        [{"x-amz-server-side-encryption-customer-key-MD5", sse_customer_key_md5} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(upload_id) do
        [{"uploadId", upload_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(part_number_marker) do
        [{"part-number-marker", part_number_marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_parts) do
        [{"max-parts", max_parts} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-abort-date", "AbortDate"},
          {"x-amz-abort-rule-id", "AbortRuleId"},
          {"x-amz-request-charged", "RequestCharged"}
        ]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Sets the accelerate configuration of an existing bucket.

  Amazon S3 Transfer Acceleration is a bucket-level feature that enables you to
  perform faster data transfers to Amazon S3.

  To use this operation, you must have permission to perform the
  `s3:PutAccelerateConfiguration` action. The bucket owner has this permission by
  default. The bucket owner can grant this permission to others. For more
  information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  The Transfer Acceleration state of a bucket can be set to one of the following
  two values:

    * Enabled – Enables accelerated data transfers to the bucket.

    * Suspended – Disables accelerated data transfers to the bucket.

  The
  [GetBucketAccelerateConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketAccelerateConfiguration.html) action returns the transfer acceleration state of a bucket.

  After setting the Transfer Acceleration state of a bucket to Enabled, it might
  take up to thirty minutes before the data transfer rates to the bucket increase.

  The name of the bucket used for Transfer Acceleration must be DNS-compliant and
  must not contain periods (".").

  For more information about transfer acceleration, see [Transfer
  Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html).

  The following operations are related to `PutBucketAccelerateConfiguration`:

    *
  [GetBucketAccelerateConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketAccelerateConfiguration.html)     *
  [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)
  """
  def put_bucket_accelerate_configuration(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?accelerate"

    {headers, input} =
      [
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Sets the permissions on an existing bucket using access control lists (ACL).

  For more information, see [Using ACLs](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html).
  To set the ACL of a bucket, you must have `WRITE_ACP` permission.

  You can use one of the following two ways to set a bucket's permissions:

    * Specify the ACL in the request body

    * Specify permissions using request headers

  You cannot specify access permission using both the body and the request
  headers.

  Depending on your application needs, you may choose to set the ACL on a bucket
  using either the request body or the headers. For example, if you have an
  existing application that updates a bucket ACL using the request body, then you
  can continue to use that approach.

  If your bucket uses the bucket owner enforced setting for S3 Object Ownership,
  ACLs are disabled and no longer affect permissions. You must use policies to
  grant access to your bucket and the objects in it. Requests to set ACLs or
  update ACLs fail and return the `AccessControlListNotSupported` error code.
  Requests to read ACLs are still supported. For more information, see
  [Controlling object ownership](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html)
  in the *Amazon S3 User Guide*.

  ## Definitions

  ### Permissions

  You can set access permissions by using one of the following methods:

     Specify a canned ACL with the `x-amz-acl` request header. Amazon S3
  supports a set of predefined ACLs, known as *canned ACLs*. Each canned ACL has a
  predefined set of grantees and permissions. Specify the canned ACL name as the
  value of `x-amz-acl`. If you use this header, you cannot use other access
  control-specific headers in your request. For more information, see [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).

     Specify access permissions explicitly with the `x-amz-grant-read`,
  `x-amz-grant-read-acp`, `x-amz-grant-write-acp`, and `x-amz-grant-full-control`
  headers. When using these headers, you specify explicit access permissions and
  grantees (Amazon Web Services accounts or Amazon S3 groups) who will receive the
  permission. If you use these ACL-specific headers, you cannot use the
  `x-amz-acl` header to set a canned ACL. These parameters map to the set of
  permissions that Amazon S3 supports in an ACL. For more information, see [Access Control List (ACL)
  Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html).

  You specify each grantee as a type=value pair, where the type is one of the
  following:

       `id` – if the value specified is the canonical user ID
  of an Amazon Web Services account

       `uri` – if you are granting permissions to a predefined
  group

       `emailAddress` – if the value specified is the email
  address of an Amazon Web Services account

  Using email addresses to specify a grantee is only supported in the following
  Amazon Web Services Regions:

     US East (N. Virginia)

     US West (N. California)

     US West (Oregon)

     Asia Pacific (Singapore)

     Asia Pacific (Sydney)

     Asia Pacific (Tokyo)

     Europe (Ireland)

     South America (São Paulo)

  For a list of all the Amazon S3 supported Regions and endpoints, see [Regions and
  Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region)
  in the Amazon Web Services General Reference.

  For example, the following `x-amz-grant-write` header grants create, overwrite,
  and delete objects permission to LogDelivery group predefined by Amazon S3 and
  two Amazon Web Services accounts identified by their email addresses.

  `x-amz-grant-write: uri="http://acs.amazonaws.com/groups/s3/LogDelivery",
  id="111122223333", id="555566667777" `

  You can use either a canned ACL or specify access permissions explicitly. You
  cannot do both.

  ### Grantee Values

  You can specify the person (grantee) to whom you're assigning access rights
  (using request elements) in the following ways:

     By the person's ID:

  `<Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:type="CanonicalUser"><ID><>ID<></ID><DisplayName><>GranteesEmail<></DisplayName>
  </Grantee>`

  DisplayName is optional and ignored in the request

     By URI:

  `<Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:type="Group"><URI><>http://acs.amazonaws.com/groups/global/AuthenticatedUsers<></URI></Grantee>`

     By Email address:

  `<Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:type="AmazonCustomerByEmail"><EmailAddress><>Grantees@email.com<></EmailAddress>&</Grantee>`

  The grantee is resolved to the CanonicalUser and, in a response to a GET Object
  acl request, appears as the CanonicalUser.

  Using email addresses to specify a grantee is only supported in the following
  Amazon Web Services Regions:

     US East (N. Virginia)

     US West (N. California)

     US West (Oregon)

     Asia Pacific (Singapore)

     Asia Pacific (Sydney)

     Asia Pacific (Tokyo)

     Europe (Ireland)

     South America (São Paulo)

  For a list of all the Amazon S3 supported Regions and endpoints, see [Regions and
  Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region)
  in the Amazon Web Services General Reference.

  The following operations are related to `PutBucketAcl`:

    *
  [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)     *
  [DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html)

    *
  [GetObjectAcl](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAcl.html)
  """
  def put_bucket_acl(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?acl"

    {headers, input} =
      [
        {"ACL", "x-amz-acl"},
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ContentMD5", "Content-MD5"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"},
        {"GrantFullControl", "x-amz-grant-full-control"},
        {"GrantRead", "x-amz-grant-read"},
        {"GrantReadACP", "x-amz-grant-read-acp"},
        {"GrantWrite", "x-amz-grant-write"},
        {"GrantWriteACP", "x-amz-grant-write-acp"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Sets an analytics configuration for the bucket (specified by the analytics
  configuration ID).

  You can have up to 1,000 analytics configurations per bucket.

  You can choose to have storage class analysis export analysis reports sent to a
  comma-separated values (CSV) flat file. See the `DataExport` request element.
  Reports are updated daily and are based on the object filters that you
  configure. When selecting data export, you specify a destination bucket and an
  optional destination prefix where the file is written. You can export the data
  to a destination bucket in a different account. However, the destination bucket
  must be in the same Region as the bucket that you are making the PUT analytics
  configuration to. For more information, see [Amazon S3 Analytics – Storage Class Analysis](https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html).

  You must create a bucket policy on the destination bucket where the exported
  file is written to grant permissions to Amazon S3 to write objects to the
  bucket. For an example policy, see [Granting Permissions for Amazon S3 Inventory and Storage Class
  Analysis](https://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html#example-bucket-policies-use-case-9).

  To use this operation, you must have permissions to perform the
  `s3:PutAnalyticsConfiguration` action. The bucket owner has this permission by
  default. The bucket owner can grant this permission to others. For more
  information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  `PutBucketAnalyticsConfiguration` has the following special errors:

    *     * *HTTP Error: HTTP 400 Bad Request*

      * *Code: InvalidArgument*

      * *Cause: Invalid argument.*

    *     * *HTTP Error: HTTP 400 Bad Request*

      * *Code: TooManyConfigurations*

      * *Cause: You are attempting to create a new
  configuration but have already reached the 1,000-configuration limit.*

    *     * *HTTP Error: HTTP 403 Forbidden*

      * *Code: AccessDenied*

      * *Cause: You are not the owner of the specified bucket,
  or you do not have the s3:PutAnalyticsConfiguration bucket permission to set the
  configuration on the bucket.*

  The following operations are related to `PutBucketAnalyticsConfiguration`:

    *
  [GetBucketAnalyticsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketAnalyticsConfiguration.html)     *
  [DeleteBucketAnalyticsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketAnalyticsConfiguration.html)

    *
  [ListBucketAnalyticsConfigurations](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketAnalyticsConfigurations.html)
  """
  def put_bucket_analytics_configuration(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?analytics"

    {headers, input} =
      [
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"Id", "id"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Sets the `cors` configuration for your bucket.

  If the configuration exists, Amazon S3 replaces it.

  To use this operation, you must be allowed to perform the `s3:PutBucketCORS`
  action. By default, the bucket owner has this permission and can grant it to
  others.

  You set this configuration on a bucket so that the bucket can service
  cross-origin requests. For example, you might want to enable a request whose
  origin is `http://www.example.com` to access your Amazon S3 bucket at
  `my.example.bucket.com` by using the browser's `XMLHttpRequest` capability.

  To enable cross-origin resource sharing (CORS) on a bucket, you add the `cors`
  subresource to the bucket. The `cors` subresource is an XML document in which
  you configure rules that identify origins and the HTTP methods that can be
  executed on your bucket. The document is limited to 64 KB in size.

  When Amazon S3 receives a cross-origin request (or a pre-flight OPTIONS request)
  against a bucket, it evaluates the `cors` configuration on the bucket and uses
  the first `CORSRule` rule that matches the incoming browser request to enable a
  cross-origin request. For a rule to match, the following conditions must be met:

    * The request's `Origin` header must match `AllowedOrigin` elements.

    * The request method (for example, GET, PUT, HEAD, and so on) or the
  `Access-Control-Request-Method` header in case of a pre-flight `OPTIONS` request
  must be one of the `AllowedMethod` elements.

    * Every header specified in the `Access-Control-Request-Headers`
  request header of a pre-flight request must match an `AllowedHeader` element.

  For more information about CORS, go to [Enabling Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html) in the
  *Amazon S3 User Guide*.

  The following operations are related to `PutBucketCors`:

    *
  [GetBucketCors](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketCors.html)     *
  [DeleteBucketCors](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketCors.html)

    *
  [RESTOPTIONSobject](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTOPTIONSobject.html)
  """
  def put_bucket_cors(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?cors"

    {headers, input} =
      [
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ContentMD5", "Content-MD5"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :append_sha256_content_hash,
        true
      )

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  This action uses the `encryption` subresource to configure default encryption
  and Amazon S3 Bucket Keys for an existing bucket.

  By default, all buckets have a default encryption configuration that uses
  server-side encryption with Amazon S3 managed keys (SSE-S3). You can optionally
  configure default encryption for a bucket by using server-side encryption with
  Key Management Service (KMS) keys (SSE-KMS) or dual-layer server-side encryption
  with Amazon Web Services KMS keys (DSSE-KMS). If you specify default encryption
  by using SSE-KMS, you can also configure [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html). If you
  use PutBucketEncryption to set your [default bucket encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html)
  to SSE-KMS, you should verify that your KMS key ID is correct. Amazon S3 does
  not validate the KMS key ID provided in PutBucketEncryption requests.

  This action requires Amazon Web Services Signature Version 4. For more
  information, see [ Authenticating Requests (Amazon Web Services Signature Version
  4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html).

  To use this operation, you must have permission to perform the
  `s3:PutEncryptionConfiguration` action. The bucket owner has this permission by
  default. The bucket owner can grant this permission to others. For more
  information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
  in the *Amazon S3 User Guide*.

  The following operations are related to `PutBucketEncryption`:

    *
  [GetBucketEncryption](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketEncryption.html)     *
  [DeleteBucketEncryption](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketEncryption.html)
  """
  def put_bucket_encryption(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?encryption"

    {headers, input} =
      [
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ContentMD5", "Content-MD5"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Puts a S3 Intelligent-Tiering configuration to the specified bucket.

  You can have up to 1,000 S3 Intelligent-Tiering configurations per bucket.

  The S3 Intelligent-Tiering storage class is designed to optimize storage costs
  by automatically moving data to the most cost-effective storage access tier,
  without performance impact or operational overhead. S3 Intelligent-Tiering
  delivers automatic cost savings in three low latency and high throughput access
  tiers. To get the lowest storage cost on data that can be accessed in minutes to
  hours, you can choose to activate additional archiving capabilities.

  The S3 Intelligent-Tiering storage class is the ideal storage class for data
  with unknown, changing, or unpredictable access patterns, independent of object
  size or retention period. If the size of an object is less than 128 KB, it is
  not monitored and not eligible for auto-tiering. Smaller objects can be stored,
  but they are always charged at the Frequent Access tier rates in the S3
  Intelligent-Tiering storage class.

  For more information, see [Storage class for automatically optimizing frequently and infrequently accessed
  objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access).

  Operations related to `PutBucketIntelligentTieringConfiguration` include:

    *
  [DeleteBucketIntelligentTieringConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketIntelligentTieringConfiguration.html)     *
  [GetBucketIntelligentTieringConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketIntelligentTieringConfiguration.html)

    *
  [ListBucketIntelligentTieringConfigurations](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketIntelligentTieringConfigurations.html)

  You only need S3 Intelligent-Tiering enabled on a bucket if you want to
  automatically move objects stored in the S3 Intelligent-Tiering storage class to
  the Archive Access or Deep Archive Access tier.

  `PutBucketIntelligentTieringConfiguration` has the following special errors:

  ## Definitions

  ### HTTP 400 Bad Request Error

  *Code:* InvalidArgument

  *Cause:* Invalid Argument

  ### HTTP 400 Bad Request Error

  *Code:* TooManyConfigurations

  *Cause:* You are attempting to create a new configuration but have already
  reached the 1,000-configuration limit.

  ### HTTP 403 Forbidden Error

  *Cause:* You are not the owner of the specified bucket, or you do not have the
  `s3:PutIntelligentTieringConfiguration` bucket permission to set the
  configuration on the bucket.
  """
  def put_bucket_intelligent_tiering_configuration(
        %Client{} = client,
        bucket,
        input,
        options \\ []
      ) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?intelligent-tiering"
    headers = []

    {query_params, input} =
      [
        {"Id", "id"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  This implementation of the `PUT` action adds an inventory configuration
  (identified by the inventory ID) to the bucket.

  You can have up to 1,000 inventory configurations per bucket.

  Amazon S3 inventory generates inventories of the objects in the bucket on a
  daily or weekly basis, and the results are published to a flat file. The bucket
  that is inventoried is called the *source* bucket, and the bucket where the
  inventory flat file is stored is called the *destination* bucket. The
  *destination* bucket must be in the same Amazon Web Services Region as the
  *source* bucket.

  When you configure an inventory for a *source* bucket, you specify the
  *destination* bucket where you want the inventory to be stored, and whether to
  generate the inventory daily or weekly. You can also configure what object
  metadata to include and whether to inventory all object versions or only current
  versions. For more information, see [Amazon S3 Inventory](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html)
  in the Amazon S3 User Guide.

  You must create a bucket policy on the *destination* bucket to grant permissions
  to Amazon S3 to write objects to the bucket in the defined location. For an
  example policy, see [ Granting Permissions for Amazon S3 Inventory and Storage Class
  Analysis](https://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html#example-bucket-policies-use-case-9).

  ## Definitions

  ### Permissions

  To use this operation, you must have permission to perform the
  `s3:PutInventoryConfiguration` action. The bucket owner has this permission by
  default and can grant this permission to others.

  The `s3:PutInventoryConfiguration` permission allows a user to create an [S3 Inventory](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-inventory.html)
  report that includes all object metadata fields available and to specify the
  destination bucket to store the inventory. A user with read access to objects in
  the destination bucket can also access all object metadata fields that are
  available in the inventory report.

  To restrict access to an inventory report, see [Restricting access to an Amazon S3 Inventory
  report](https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html#example-bucket-policies-use-case-10)
  in the *Amazon S3 User Guide*. For more information about the metadata fields
  available in S3 Inventory, see [Amazon S3 Inventory lists](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-inventory.html#storage-inventory-contents)
  in the *Amazon S3 User Guide*. For more information about permissions, see
  [Permissions related to bucket subresource operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Identity and access management in Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
  in the *Amazon S3 User Guide*.

  `PutBucketInventoryConfiguration` has the following special errors:

  ## Definitions

  ### HTTP 400 Bad Request Error

  *Code:* InvalidArgument

  *Cause:* Invalid Argument

  ### HTTP 400 Bad Request Error

  *Code:* TooManyConfigurations

  *Cause:* You are attempting to create a new configuration but have already
  reached the 1,000-configuration limit.

  ### HTTP 403 Forbidden Error

  *Cause:* You are not the owner of the specified bucket, or you do not have the
  `s3:PutInventoryConfiguration` bucket permission to set the configuration on the
  bucket.

  The following operations are related to `PutBucketInventoryConfiguration`:

    *
  [GetBucketInventoryConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketInventoryConfiguration.html)     *
  [DeleteBucketInventoryConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketInventoryConfiguration.html)

    *
  [ListBucketInventoryConfigurations](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketInventoryConfigurations.html)
  """
  def put_bucket_inventory_configuration(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?inventory"

    {headers, input} =
      [
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"Id", "id"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  For an updated version of this API, see
  [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html).  This version has been deprecated. Existing lifecycle configurations will work.
  For new lifecycle configurations, use the updated API.

  Creates a new lifecycle configuration for the bucket or replaces an existing
  lifecycle configuration. For information about lifecycle configuration, see
  [Object Lifecycle
  Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)
  in the *Amazon S3 User Guide*.

  By default, all Amazon S3 resources, including buckets, objects, and related
  subresources (for example, lifecycle configuration and website configuration)
  are private. Only the resource owner, the Amazon Web Services account that
  created the resource, can access it. The resource owner can optionally grant
  access permissions to others by writing an access policy. For this operation,
  users must get the `s3:PutLifecycleConfiguration` permission.

  You can also explicitly deny permissions. Explicit denial also supersedes any
  other permissions. If you want to prevent users or accounts from removing or
  deleting objects from your bucket, you must deny them permissions for the
  following actions:

    * `s3:DeleteObject`

    * `s3:DeleteObjectVersion`

    * `s3:PutLifecycleConfiguration`

  For more information about permissions, see [Managing Access Permissions to your Amazon S3
  Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
  in the *Amazon S3 User Guide*.

  For more examples of transitioning objects to storage classes such as
  STANDARD_IA or ONEZONE_IA, see [Examples of Lifecycle Configuration](https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#lifecycle-configuration-examples).

  The following operations are related to `PutBucketLifecycle`:

    *
  [GetBucketLifecycle](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycle.html)(Deprecated)     *
  [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html)

    *
  [RestoreObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html)     * By default, a resource owner—in this case, a bucket owner, which
  is the Amazon Web Services account that created the bucket—can perform any of
  the operations. A resource owner can also grant others permission to perform the
  operation. For more information, see the following topics in the Amazon S3 User
  Guide:

      * [Specifying Permissions in a
  Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html)

      * [Managing Access Permissions to your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
  """
  def put_bucket_lifecycle(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?lifecycle"

    {headers, input} =
      [
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ContentMD5", "Content-MD5"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :append_sha256_content_hash,
        true
      )

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Creates a new lifecycle configuration for the bucket or replaces an existing
  lifecycle configuration.

  Keep in mind that this will overwrite an existing lifecycle configuration, so if
  you want to retain any configuration details, they must be included in the new
  lifecycle configuration. For information about lifecycle configuration, see
  [Managing your storage lifecycle](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html).

  Bucket lifecycle configuration now supports specifying a lifecycle rule using an
  object key name prefix, one or more object tags, or a combination of both.
  Accordingly, this section describes the latest API. The previous version of the
  API supported filtering based only on an object key name prefix, which is
  supported for backward compatibility. For the related API description, see
  [PutBucketLifecycle](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycle.html). 
  ## Definitions

  ### Rules

  You specify the lifecycle configuration in your request body. The lifecycle
  configuration is specified as XML consisting of one or more rules. An Amazon S3
  Lifecycle configuration can have up to 1,000 rules. This limit is not
  adjustable. Each rule consists of the following:

     A filter identifying a subset of objects to which the rule applies.
  The filter can be based on a key name prefix, object tags, or a combination of
  both.

     A status indicating whether the rule is in effect.

     One or more lifecycle transition and expiration actions that you
  want Amazon S3 to perform on the objects identified by the filter. If the state
  of your bucket is versioning-enabled or versioning-suspended, you can have many
  versions of the same object (one current version and zero or more noncurrent
  versions). Amazon S3 provides predefined actions that you can specify for
  current and noncurrent object versions.

  For more information, see [Object Lifecycle
  Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)
  and [Lifecycle Configuration Elements](https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html).

  ### Permissions

  By default, all Amazon S3 resources are private, including buckets, objects, and
  related subresources (for example, lifecycle configuration and website
  configuration). Only the resource owner (that is, the Amazon Web Services
  account that created it) can access the resource. The resource owner can
  optionally grant access permissions to others by writing an access policy. For
  this operation, a user must get the `s3:PutLifecycleConfiguration` permission.

  You can also explicitly deny permissions. An explicit deny also supersedes any
  other permissions. If you want to block users or accounts from removing or
  deleting objects from your bucket, you must deny them permissions for the
  following actions:

     `s3:DeleteObject`

     `s3:DeleteObjectVersion`

     `s3:PutLifecycleConfiguration`

  For more information about permissions, see [Managing Access Permissions to Your Amazon S3
  Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  The following operations are related to `PutBucketLifecycleConfiguration`:

    * [Examples of Lifecycle Configuration](https://docs.aws.amazon.com/AmazonS3/latest/dev/lifecycle-configuration-examples.html)

    *
  [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html)     *
  [DeleteBucketLifecycle](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketLifecycle.html)
  """
  def put_bucket_lifecycle_configuration(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?lifecycle"

    {headers, input} =
      [
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Set the logging parameters for a bucket and to specify permissions for who can
  view and modify the logging parameters.

  All logs are saved to buckets in the same Amazon Web Services Region as the
  source bucket. To set the logging status of a bucket, you must be the bucket
  owner.

  The bucket owner is automatically granted FULL_CONTROL to all logs. You use the
  `Grantee` request element to grant access to other people. The `Permissions`
  request element specifies the kind of access the grantee has to the logs.

  If the target bucket for log delivery uses the bucket owner enforced setting for
  S3 Object Ownership, you can't use the `Grantee` request element to grant access
  to others. Permissions can only be granted using policies. For more information,
  see [Permissions for server access log delivery](https://docs.aws.amazon.com/AmazonS3/latest/userguide/enable-server-access-logging.html#grant-log-delivery-permissions-general)
  in the *Amazon S3 User Guide*.

  ## Definitions

  ### Grantee Values

  You can specify the person (grantee) to whom you're assigning access rights (by
  using request elements) in the following ways:

     By the person's ID:

  `<Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:type="CanonicalUser"><ID><>ID<></ID><DisplayName><>GranteesEmail<></DisplayName>
  </Grantee>`

  `DisplayName` is optional and ignored in the request.

     By Email address:

  ` <Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:type="AmazonCustomerByEmail"><EmailAddress><>Grantees@email.com<></EmailAddress></Grantee>`

  The grantee is resolved to the `CanonicalUser` and, in a response to a
  `GETObjectAcl` request, appears as the CanonicalUser.

     By URI:

  `<Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:type="Group"><URI><>http://acs.amazonaws.com/groups/global/AuthenticatedUsers<></URI></Grantee>`

  To enable logging, you use `LoggingEnabled` and its children request elements.
  To disable logging, you use an empty `BucketLoggingStatus` request element:

  `<BucketLoggingStatus xmlns="http://doc.s3.amazonaws.com/2006-03-01" />`

  For more information about server access logging, see [Server Access Logging](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerLogs.html)
  in the *Amazon S3 User Guide*.

  For more information about creating a bucket, see
  [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html). For more information about returning the logging status of a bucket, see
  [GetBucketLogging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLogging.html).

  The following operations are related to `PutBucketLogging`:

    *
  [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)     *
  [DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html)

    *
  [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)     *
  [GetBucketLogging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLogging.html)
  """
  def put_bucket_logging(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?logging"

    {headers, input} =
      [
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ContentMD5", "Content-MD5"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Sets a metrics configuration (specified by the metrics configuration ID) for the
  bucket.

  You can have up to 1,000 metrics configurations per bucket. If you're updating
  an existing metrics configuration, note that this is a full replacement of the
  existing metrics configuration. If you don't include the elements you want to
  keep, they are erased.

  To use this operation, you must have permissions to perform the
  `s3:PutMetricsConfiguration` action. The bucket owner has this permission by
  default. The bucket owner can grant this permission to others. For more
  information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  For information about CloudWatch request metrics for Amazon S3, see [Monitoring Metrics with Amazon
  CloudWatch](https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html).

  The following operations are related to `PutBucketMetricsConfiguration`:

    *
  [DeleteBucketMetricsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketMetricsConfiguration.html)     *
  [GetBucketMetricsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketMetricsConfiguration.html)

    *
  [ListBucketMetricsConfigurations](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketMetricsConfigurations.html)

  `PutBucketMetricsConfiguration` has the following special error:

    * Error code: `TooManyConfigurations`

      * Description: You are attempting to create a new
  configuration but have already reached the 1,000-configuration limit.

      * HTTP Status Code: HTTP 400 Bad Request
  """
  def put_bucket_metrics_configuration(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?metrics"

    {headers, input} =
      [
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"Id", "id"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  No longer used, see the
  [PutBucketNotificationConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketNotificationConfiguration.html)
  operation.
  """
  def put_bucket_notification(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?notification"

    {headers, input} =
      [
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ContentMD5", "Content-MD5"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Enables notifications of specified events for a bucket.

  For more information about event notifications, see [Configuring Event Notifications](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html).

  Using this API, you can replace an existing notification configuration. The
  configuration is an XML file that defines the event types that you want Amazon
  S3 to publish and the destination where you want Amazon S3 to publish an event
  notification when it detects an event of the specified type.

  By default, your bucket has no event notifications configured. That is, the
  notification configuration will be an empty `NotificationConfiguration`.

  `<NotificationConfiguration>`

  `</NotificationConfiguration>`

  This action replaces the existing notification configuration with the
  configuration you include in the request body.

  After Amazon S3 receives this request, it first verifies that any Amazon Simple
  Notification Service (Amazon SNS) or Amazon Simple Queue Service (Amazon SQS)
  destination exists, and that the bucket owner has permission to publish to it by
  sending a test notification. In the case of Lambda destinations, Amazon S3
  verifies that the Lambda function permissions grant Amazon S3 permission to
  invoke the function from the Amazon S3 bucket. For more information, see
  [Configuring Notifications for Amazon S3 Events](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html).

  You can disable notifications by adding the empty NotificationConfiguration
  element.

  For more information about the number of event notification configurations that
  you can create per bucket, see [Amazon S3 service quotas](https://docs.aws.amazon.com/general/latest/gr/s3.html#limits_s3) in
  *Amazon Web Services General Reference*.

  By default, only the bucket owner can configure notifications on a bucket.
  However, bucket owners can use a bucket policy to grant permission to other
  users to set this configuration with the required `s3:PutBucketNotification`
  permission.

  The PUT notification is an atomic operation. For example, suppose your
  notification configuration includes SNS topic, SQS queue, and Lambda function
  configurations. When you send a PUT request with this configuration, Amazon S3
  sends test messages to your SNS topic. If the message fails, the entire PUT
  action will fail, and Amazon S3 will not add the configuration to your bucket.

  If the configuration in the request body includes only one `TopicConfiguration`
  specifying only the `s3:ReducedRedundancyLostObject` event type, the response
  will also include the `x-amz-sns-test-message-id` header containing the message
  ID of the test notification sent to the topic.

  The following action is related to `PutBucketNotificationConfiguration`:

    *
  [GetBucketNotificationConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketNotificationConfiguration.html)
  """
  def put_bucket_notification_configuration(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?notification"

    {headers, input} =
      [
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"},
        {"SkipDestinationValidation", "x-amz-skip-destination-validation"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Creates or modifies `OwnershipControls` for an Amazon S3 bucket.

  To use this operation, you must have the `s3:PutBucketOwnershipControls`
  permission. For more information about Amazon S3 permissions, see [Specifying permissions in a
  policy](https://docs.aws.amazon.com/AmazonS3/latest/user-guide/using-with-s3-actions.html).

  For information about Amazon S3 Object Ownership, see [Using object ownership](https://docs.aws.amazon.com/AmazonS3/latest/user-guide/about-object-ownership.html).

  The following operations are related to `PutBucketOwnershipControls`:

    * `GetBucketOwnershipControls`

    * `DeleteBucketOwnershipControls`
  """
  def put_bucket_ownership_controls(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?ownershipControls"

    {headers, input} =
      [
        {"ContentMD5", "Content-MD5"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Applies an Amazon S3 bucket policy to an Amazon S3 bucket.

  If you are using an identity other than the root user of the Amazon Web Services
  account that owns the bucket, the calling identity must have the
  `PutBucketPolicy` permissions on the specified bucket and belong to the bucket
  owner's account in order to use this operation.

  If you don't have `PutBucketPolicy` permissions, Amazon S3 returns a `403 Access
  Denied` error. If you have the correct permissions, but you're not using an
  identity that belongs to the bucket owner's account, Amazon S3 returns a `405
  Method Not Allowed` error.

  To ensure that bucket owners don't inadvertently lock themselves out of their
  own buckets, the root principal in a bucket owner's Amazon Web Services account
  can perform the `GetBucketPolicy`, `PutBucketPolicy`, and `DeleteBucketPolicy`
  API actions, even if their bucket policy explicitly denies the root principal's
  access. Bucket owner root principals can only be blocked from performing these
  API actions by VPC endpoint policies and Amazon Web Services Organizations
  policies.

  For more information, see [Bucket policy examples](https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html).

  The following operations are related to `PutBucketPolicy`:

    *
  [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)     *
  [DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html)
  """
  def put_bucket_policy(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?policy"

    {headers, input} =
      [
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ConfirmRemoveSelfBucketAccess", "x-amz-confirm-remove-self-bucket-access"},
        {"ContentMD5", "Content-MD5"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Creates a replication configuration or replaces an existing one.

  For more information, see
  [Replication](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html) in the *Amazon S3 User Guide*.

  Specify the replication configuration in the request body. In the replication
  configuration, you provide the name of the destination bucket or buckets where
  you want Amazon S3 to replicate objects, the IAM role that Amazon S3 can assume
  to replicate objects on your behalf, and other relevant information. You can
  invoke this request for a specific Amazon Web Services Region by using the [
  `aws:RequestedRegion`
  ](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requestedregion)
  condition key.

  A replication configuration must include at least one rule, and can contain a
  maximum of 1,000. Each rule identifies a subset of objects to replicate by
  filtering the objects in the source bucket. To choose additional subsets of
  objects to replicate, add a rule for each subset.

  To specify a subset of the objects in the source bucket to apply a replication
  rule to, add the Filter element as a child of the Rule element. You can filter
  objects based on an object key prefix, one or more object tags, or both. When
  you add the Filter element in the configuration, you must also add the following
  elements: `DeleteMarkerReplication`, `Status`, and `Priority`.

  If you are using an earlier version of the replication configuration, Amazon S3
  handles replication of delete markers differently. For more information, see
  [Backward Compatibility](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-backward-compat-considerations).

  For information about enabling versioning on a bucket, see [Using Versioning](https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html).

  ## Definitions

  ### Handling Replication of Encrypted Objects

  By default, Amazon S3 doesn't replicate objects that are stored at rest using
  server-side encryption with KMS keys. To replicate Amazon Web Services
  KMS-encrypted objects, add the following: `SourceSelectionCriteria`,
  `SseKmsEncryptedObjects`, `Status`, `EncryptionConfiguration`, and
  `ReplicaKmsKeyID`. For information about replication configuration, see
  [Replicating Objects Created with SSE Using KMS keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-config-for-kms-objects.html).

  For information on `PutBucketReplication` errors, see [List of replication-related error
  codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ReplicationErrorCodeList)

  ### Permissions

  To create a `PutBucketReplication` request, you must have
  `s3:PutReplicationConfiguration` permissions for the bucket.

  By default, a resource owner, in this case the Amazon Web Services account that
  created the bucket, can perform this operation. The resource owner can also
  grant others permissions to perform the operation. For more information about
  permissions, see [Specifying Permissions in a Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  To perform this operation, the user or role performing the action must have the
  [iam:PassRole](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html) permission.

  The following operations are related to `PutBucketReplication`:

    *
  [GetBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketReplication.html)

    *
  [DeleteBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketReplication.html)
  """
  def put_bucket_replication(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?replication"

    {headers, input} =
      [
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ContentMD5", "Content-MD5"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"},
        {"Token", "x-amz-bucket-object-lock-token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Sets the request payment configuration for a bucket.

  By default, the bucket owner pays for downloads from the bucket. This
  configuration parameter enables the bucket owner (only) to specify that the
  person requesting the download will be charged for the download. For more
  information, see [Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html).

  The following operations are related to `PutBucketRequestPayment`:

    *
  [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)     *
  [GetBucketRequestPayment](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketRequestPayment.html)
  """
  def put_bucket_request_payment(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?requestPayment"

    {headers, input} =
      [
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ContentMD5", "Content-MD5"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Sets the tags for a bucket.

  Use tags to organize your Amazon Web Services bill to reflect your own cost
  structure. To do this, sign up to get your Amazon Web Services account bill with
  tag key values included. Then, to see the cost of combined resources, organize
  your billing information according to resources with the same tag key values.
  For example, you can tag several resources with a specific application name, and
  then organize your billing information to see the total cost of that application
  across several services. For more information, see [Cost Allocation and Tagging](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  and [Using Cost Allocation in Amazon S3 Bucket Tags](https://docs.aws.amazon.com/AmazonS3/latest/userguide/CostAllocTagging.html).

  When this operation sets the tags for a bucket, it will overwrite any current
  tags the bucket already has. You cannot use this operation to add tags to an
  existing list of tags.

  To use this operation, you must have permissions to perform the
  `s3:PutBucketTagging` action. The bucket owner has this permission by default
  and can grant this permission to others. For more information about permissions,
  see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  `PutBucketTagging` has the following special errors. For more Amazon S3 errors
  see, [Error Responses](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html).

    * `InvalidTag` - The tag provided was not a valid tag. This error
  can occur if the tag did not pass input validation. For more information, see
  [Using Cost Allocation in Amazon S3 Bucket Tags](https://docs.aws.amazon.com/AmazonS3/latest/userguide/CostAllocTagging.html).

    * `MalformedXML` - The XML provided does not match the schema.

    * `OperationAborted` - A conflicting conditional action is currently
  in progress against this resource. Please try again.

    * `InternalError` - The service was unable to apply the provided tag
  to the bucket.

  The following operations are related to `PutBucketTagging`:

    *
  [GetBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketTagging.html)     *
  [DeleteBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketTagging.html)
  """
  def put_bucket_tagging(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?tagging"

    {headers, input} =
      [
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ContentMD5", "Content-MD5"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :append_sha256_content_hash,
        true
      )

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Sets the versioning state of an existing bucket.

  You can set the versioning state with one of the following values:

  **Enabled**—Enables versioning for the objects in the bucket. All objects added
  to the bucket receive a unique version ID.

  **Suspended**—Disables versioning for the objects in the bucket. All objects
  added to the bucket receive the version ID null.

  If the versioning state has never been set on a bucket, it has no versioning
  state; a
  [GetBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketVersioning.html) request does not return a versioning state value.

  In order to enable MFA Delete, you must be the bucket owner. If you are the
  bucket owner and want to enable MFA Delete in the bucket versioning
  configuration, you must include the `x-amz-mfa request` header and the `Status`
  and the `MfaDelete` request elements in a request to set the versioning state of
  the bucket.

  If you have an object expiration lifecycle configuration in your non-versioned
  bucket and you want to maintain the same permanent delete behavior when you
  enable versioning, you must add a noncurrent expiration policy. The noncurrent
  expiration lifecycle configuration will manage the deletes of the noncurrent
  object versions in the version-enabled bucket. (A version-enabled bucket
  maintains one current and zero or more noncurrent object versions.) For more
  information, see [Lifecycle and
  Versioning](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html#lifecycle-and-other-bucket-config).

  The following operations are related to `PutBucketVersioning`:

    *
  [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)     *
  [DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html)

    *
  [GetBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketVersioning.html)
  """
  def put_bucket_versioning(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?versioning"

    {headers, input} =
      [
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ContentMD5", "Content-MD5"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"},
        {"MFA", "x-amz-mfa"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Sets the configuration of the website that is specified in the `website`
  subresource.

  To configure a bucket as a website, you can add this subresource on the bucket
  with website configuration information such as the file name of the index
  document and any redirect rules. For more information, see [Hosting Websites on Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html).

  This PUT action requires the `S3:PutBucketWebsite` permission. By default, only
  the bucket owner can configure the website attached to a bucket; however, bucket
  owners can allow other users to set the website configuration by writing a
  bucket policy that grants them the `S3:PutBucketWebsite` permission.

  To redirect all website requests sent to the bucket's website endpoint, you add
  a website configuration with the following elements. Because all requests are
  sent to another website, you don't need to provide index document name for the
  bucket.

    * `WebsiteConfiguration`

    * `RedirectAllRequestsTo`

    * `HostName`

    * `Protocol`

  If you want granular control over redirects, you can use the following elements
  to add routing rules that describe conditions for redirecting requests and
  information about the redirect destination. In this case, the website
  configuration must provide an index document for the bucket, because some
  requests might not be redirected.

    * `WebsiteConfiguration`

    * `IndexDocument`

    * `Suffix`

    * `ErrorDocument`

    * `Key`

    * `RoutingRules`

    * `RoutingRule`

    * `Condition`

    * `HttpErrorCodeReturnedEquals`

    * `KeyPrefixEquals`

    * `Redirect`

    * `Protocol`

    * `HostName`

    * `ReplaceKeyPrefixWith`

    * `ReplaceKeyWith`

    * `HttpRedirectCode`

  Amazon S3 has a limitation of 50 routing rules per website configuration. If you
  require more than 50 routing rules, you can use object redirect. For more
  information, see [Configuring an Object Redirect](https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html)
  in the *Amazon S3 User Guide*.

  The maximum request length is limited to 128 KB.
  """
  def put_bucket_website(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?website"

    {headers, input} =
      [
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ContentMD5", "Content-MD5"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Adds an object to a bucket.

  You must have WRITE permissions on a bucket to add an object to it.

  Amazon S3 never adds partial objects; if you receive a success response, Amazon
  S3 added the entire object to the bucket. You cannot use `PutObject` to only
  update a single piece of metadata for an existing object. You must put the
  entire object with updated metadata if you want to update some values.

  Amazon S3 is a distributed system. If it receives multiple write requests for
  the same object simultaneously, it overwrites all but the last object written.
  To prevent objects from being deleted or overwritten, you can use [Amazon S3 Object
  Lock](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html).

  To ensure that data is not corrupted traversing the network, use the
  `Content-MD5` header. When you use this header, Amazon S3 checks the object
  against the provided MD5 value and, if they do not match, returns an error.
  Additionally, you can calculate the MD5 while putting an object to Amazon S3 and
  compare the returned ETag to the calculated MD5 value.

     To successfully complete the `PutObject` request, you must have the
  `s3:PutObject` in your IAM permissions.

     To successfully change the objects acl of your `PutObject` request,
  you must have the `s3:PutObjectAcl` in your IAM permissions.

     To successfully set the tag-set with your `PutObject` request, you
  must have the `s3:PutObjectTagging` in your IAM permissions.

     The `Content-MD5` header is required for any request to upload an
  object with a retention period configured using Amazon S3 Object Lock. For more
  information about Amazon S3 Object Lock, see [Amazon S3 Object Lock Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html)
  in the *Amazon S3 User Guide*.

  You have four mutually exclusive options to protect data using server-side
  encryption in Amazon S3, depending on how you choose to manage the encryption
  keys. Specifically, the encryption key options are Amazon S3 managed keys
  (SSE-S3), Amazon Web Services KMS keys (SSE-KMS or DSSE-KMS), and
  customer-provided keys (SSE-C). Amazon S3 encrypts data with server-side
  encryption by using Amazon S3 managed keys (SSE-S3) by default. You can
  optionally tell Amazon S3 to encrypt data at rest by using server-side
  encryption with other key options. For more information, see [Using Server-Side Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html).

  When adding a new object, you can use headers to grant ACL-based permissions to
  individual Amazon Web Services accounts or to predefined groups defined by
  Amazon S3. These permissions are then added to the ACL on the object. By
  default, all objects are private. Only the owner has full access control. For
  more information, see [Access Control List (ACL) Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html) and
  [Managing ACLs Using the REST API](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-using-rest-api.html).

  If the bucket that you're uploading objects to uses the bucket owner enforced
  setting for S3 Object Ownership, ACLs are disabled and no longer affect
  permissions. Buckets that use this setting only accept PUT requests that don't
  specify an ACL or PUT requests that specify bucket owner full control ACLs, such
  as the `bucket-owner-full-control` canned ACL or an equivalent form of this ACL
  expressed in the XML format. PUT requests that contain other ACLs (for example,
  custom grants to certain Amazon Web Services accounts) fail and return a `400`
  error with the error code `AccessControlListNotSupported`. For more information,
  see [ Controlling ownership of objects and disabling ACLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html)
  in the *Amazon S3 User Guide*.

  If your bucket uses the bucket owner enforced setting for Object Ownership, all
  objects written to the bucket by any account will be owned by the bucket owner.

  By default, Amazon S3 uses the STANDARD Storage Class to store newly created
  objects. The STANDARD storage class provides high durability and high
  availability. Depending on performance needs, you can specify a different
  Storage Class. Amazon S3 on Outposts only uses the OUTPOSTS Storage Class. For
  more information, see [Storage Classes](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html)
  in the *Amazon S3 User Guide*.

  If you enable versioning for a bucket, Amazon S3 automatically generates a
  unique version ID for the object being stored. Amazon S3 returns this ID in the
  response. When you enable versioning for a bucket, if Amazon S3 receives
  multiple write requests for the same object simultaneously, it stores all of the
  objects. For more information about versioning, see [Adding Objects to Versioning-Enabled
  Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/AddingObjectstoVersioningEnabledBuckets.html).
  For information about returning the versioning state of a bucket, see
  [GetBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketVersioning.html).  For more information about related Amazon S3 APIs, see the following:

    *
  [CopyObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html)

    *
  [DeleteObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)
  """
  def put_object(%Client{} = client, bucket, key, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}"

    {headers, input} =
      [
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"SSECustomerKey", "x-amz-server-side-encryption-customer-key"},
        {"GrantFullControl", "x-amz-grant-full-control"},
        {"ACL", "x-amz-acl"},
        {"ChecksumCRC32C", "x-amz-checksum-crc32c"},
        {"ObjectLockRetainUntilDate", "x-amz-object-lock-retain-until-date"},
        {"RequestPayer", "x-amz-request-payer"},
        {"BucketKeyEnabled", "x-amz-server-side-encryption-bucket-key-enabled"},
        {"ContentType", "Content-Type"},
        {"SSECustomerKeyMD5", "x-amz-server-side-encryption-customer-key-MD5"},
        {"ObjectLockLegalHoldStatus", "x-amz-object-lock-legal-hold"},
        {"Tagging", "x-amz-tagging"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"},
        {"WebsiteRedirectLocation", "x-amz-website-redirect-location"},
        {"ContentLanguage", "Content-Language"},
        {"SSECustomerAlgorithm", "x-amz-server-side-encryption-customer-algorithm"},
        {"ContentEncoding", "Content-Encoding"},
        {"ChecksumSHA256", "x-amz-checksum-sha256"},
        {"Expires", "Expires"},
        {"ContentMD5", "Content-MD5"},
        {"GrantWriteACP", "x-amz-grant-write-acp"},
        {"SSEKMSEncryptionContext", "x-amz-server-side-encryption-context"},
        {"CacheControl", "Cache-Control"},
        {"StorageClass", "x-amz-storage-class"},
        {"GrantRead", "x-amz-grant-read"},
        {"ContentLength", "Content-Length"},
        {"ObjectLockMode", "x-amz-object-lock-mode"},
        {"ContentDisposition", "Content-Disposition"},
        {"ServerSideEncryption", "x-amz-server-side-encryption"},
        {"SSEKMSKeyId", "x-amz-server-side-encryption-aws-kms-key-id"},
        {"GrantReadACP", "x-amz-grant-read-acp"},
        {"ChecksumCRC32", "x-amz-checksum-crc32"},
        {"ChecksumSHA1", "x-amz-checksum-sha1"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"x-amz-checksum-crc32", "ChecksumCRC32"},
          {"x-amz-checksum-crc32c", "ChecksumCRC32C"},
          {"x-amz-checksum-sha1", "ChecksumSHA1"},
          {"x-amz-checksum-sha256", "ChecksumSHA256"},
          {"ETag", "ETag"},
          {"x-amz-expiration", "Expiration"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption-customer-algorithm", "SSECustomerAlgorithm"},
          {"x-amz-server-side-encryption-customer-key-MD5", "SSECustomerKeyMD5"},
          {"x-amz-server-side-encryption-context", "SSEKMSEncryptionContext"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"},
          {"x-amz-version-id", "VersionId"}
        ]
      )

    options =
      Keyword.put(
        options,
        :send_body_as_binary?,
        true
      )

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Uses the `acl` subresource to set the access control list (ACL) permissions for
  a new or existing object in an S3 bucket.

  You must have `WRITE_ACP` permission to set the ACL of an object. For more
  information, see [What permissions can I grant?](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#permissions)
  in the *Amazon S3 User Guide*.

  This action is not supported by Amazon S3 on Outposts.

  Depending on your application needs, you can choose to set the ACL on an object
  using either the request body or the headers. For example, if you have an
  existing application that updates a bucket ACL using the request body, you can
  continue to use that approach. For more information, see [Access Control List (ACL)
  Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html) in
  the *Amazon S3 User Guide*.

  If your bucket uses the bucket owner enforced setting for S3 Object Ownership,
  ACLs are disabled and no longer affect permissions. You must use policies to
  grant access to your bucket and the objects in it. Requests to set ACLs or
  update ACLs fail and return the `AccessControlListNotSupported` error code.
  Requests to read ACLs are still supported. For more information, see
  [Controlling object ownership](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html)
  in the *Amazon S3 User Guide*.

  ## Definitions

  ### Permissions

  You can set access permissions using one of the following methods:

     Specify a canned ACL with the `x-amz-acl` request header. Amazon S3
  supports a set of predefined ACLs, known as canned ACLs. Each canned ACL has a
  predefined set of grantees and permissions. Specify the canned ACL name as the
  value of `x-amz-ac`l. If you use this header, you cannot use other access
  control-specific headers in your request. For more information, see [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).

     Specify access permissions explicitly with the `x-amz-grant-read`,
  `x-amz-grant-read-acp`, `x-amz-grant-write-acp`, and `x-amz-grant-full-control`
  headers. When using these headers, you specify explicit access permissions and
  grantees (Amazon Web Services accounts or Amazon S3 groups) who will receive the
  permission. If you use these ACL-specific headers, you cannot use `x-amz-acl`
  header to set a canned ACL. These parameters map to the set of permissions that
  Amazon S3 supports in an ACL. For more information, see [Access Control List (ACL)
  Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html).

  You specify each grantee as a type=value pair, where the type is one of the
  following:

       `id` – if the value specified is the canonical user ID
  of an Amazon Web Services account

       `uri` – if you are granting permissions to a predefined
  group

       `emailAddress` – if the value specified is the email
  address of an Amazon Web Services account

  Using email addresses to specify a grantee is only supported in the following
  Amazon Web Services Regions:

     US East (N. Virginia)

     US West (N. California)

     US West (Oregon)

     Asia Pacific (Singapore)

     Asia Pacific (Sydney)

     Asia Pacific (Tokyo)

     Europe (Ireland)

     South America (São Paulo)

  For a list of all the Amazon S3 supported Regions and endpoints, see [Regions and
  Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region)
  in the Amazon Web Services General Reference.

  For example, the following `x-amz-grant-read` header grants list objects
  permission to the two Amazon Web Services accounts identified by their email
  addresses.

  `x-amz-grant-read: emailAddress="xyz@amazon.com", emailAddress="abc@amazon.com"
  `

  You can use either a canned ACL or specify access permissions explicitly. You
  cannot do both.

  ### Grantee Values

  You can specify the person (grantee) to whom you're assigning access rights
  (using request elements) in the following ways:

     By the person's ID:

  `<Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:type="CanonicalUser"><ID><>ID<></ID><DisplayName><>GranteesEmail<></DisplayName>
  </Grantee>`

  DisplayName is optional and ignored in the request.

     By URI:

  `<Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:type="Group"><URI><>http://acs.amazonaws.com/groups/global/AuthenticatedUsers<></URI></Grantee>`

     By Email address:

  `<Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:type="AmazonCustomerByEmail"><EmailAddress><>Grantees@email.com<></EmailAddress>lt;/Grantee>`

  The grantee is resolved to the CanonicalUser and, in a response to a GET Object
  acl request, appears as the CanonicalUser.

  Using email addresses to specify a grantee is only supported in the following
  Amazon Web Services Regions:

     US East (N. Virginia)

     US West (N. California)

     US West (Oregon)

     Asia Pacific (Singapore)

     Asia Pacific (Sydney)

     Asia Pacific (Tokyo)

     Europe (Ireland)

     South America (São Paulo)

  For a list of all the Amazon S3 supported Regions and endpoints, see [Regions and
  Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region)
  in the Amazon Web Services General Reference.

  ### Versioning

  The ACL of an object is set at the object version level. By default, PUT sets
  the ACL of the current version of an object. To set the ACL of a different
  version, use the `versionId` subresource.

  The following operations are related to `PutObjectAcl`:

    *
  [CopyObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html)     *
  [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
  """
  def put_object_acl(%Client{} = client, bucket, key, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?acl"

    {headers, input} =
      [
        {"ACL", "x-amz-acl"},
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ContentMD5", "Content-MD5"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"},
        {"GrantFullControl", "x-amz-grant-full-control"},
        {"GrantRead", "x-amz-grant-read"},
        {"GrantReadACP", "x-amz-grant-read-acp"},
        {"GrantWrite", "x-amz-grant-write"},
        {"GrantWriteACP", "x-amz-grant-write-acp"},
        {"RequestPayer", "x-amz-request-payer"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"VersionId", "versionId"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Applies a legal hold configuration to the specified object.

  For more information, see [Locking Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).

  This action is not supported by Amazon S3 on Outposts.
  """
  def put_object_legal_hold(%Client{} = client, bucket, key, input, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?legal-hold"

    {headers, input} =
      [
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ContentMD5", "Content-MD5"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"},
        {"RequestPayer", "x-amz-request-payer"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"VersionId", "versionId"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Places an Object Lock configuration on the specified bucket.

  The rule specified in the Object Lock configuration will be applied by default
  to every new object placed in the specified bucket. For more information, see
  [Locking Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).

     The `DefaultRetention` settings require both a mode and a period.

     The `DefaultRetention` period can be either `Days` or `Years` but
  you must select one. You cannot specify `Days` and `Years` at the same time.

     You can enable Object Lock for new or existing buckets. For more
  information, see [Configuring Object Lock](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-configure.html).
  """
  def put_object_lock_configuration(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?object-lock"

    {headers, input} =
      [
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ContentMD5", "Content-MD5"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"},
        {"RequestPayer", "x-amz-request-payer"},
        {"Token", "x-amz-bucket-object-lock-token"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Places an Object Retention configuration on an object.

  For more information, see [Locking Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).
  Users or accounts require the `s3:PutObjectRetention` permission in order to
  place an Object Retention configuration on objects. Bypassing a Governance
  Retention configuration requires the `s3:BypassGovernanceRetention` permission.

  This action is not supported by Amazon S3 on Outposts.
  """
  def put_object_retention(%Client{} = client, bucket, key, input, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?retention"

    {headers, input} =
      [
        {"BypassGovernanceRetention", "x-amz-bypass-governance-retention"},
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ContentMD5", "Content-MD5"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"},
        {"RequestPayer", "x-amz-request-payer"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"VersionId", "versionId"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-request-charged", "RequestCharged"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Sets the supplied tag-set to an object that already exists in a bucket.

  A tag is a key-value pair. For more information, see [Object Tagging](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-tagging.html).

  You can associate tags with an object by sending a PUT request against the
  tagging subresource that is associated with the object. You can retrieve tags by
  sending a GET request. For more information, see
  [GetObjectTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html).  For tagging-related restrictions related to characters and encodings, see [Tag
  Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html).
  Note that Amazon S3 limits the maximum number of tags to 10 tags per object.

  To use this operation, you must have permission to perform the
  `s3:PutObjectTagging` action. By default, the bucket owner has this permission
  and can grant this permission to others.

  To put tags of any other version, use the `versionId` query parameter. You also
  need permission for the `s3:PutObjectVersionTagging` action.

  `PutObjectTagging` has the following special errors. For more Amazon S3 errors
  see, [Error Responses](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html).

    * `InvalidTag` - The tag provided was not a valid tag. This error
  can occur if the tag did not pass input validation. For more information, see
  [Object Tagging](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-tagging.html).

    * `MalformedXML` - The XML provided does not match the schema.

    * `OperationAborted` - A conflicting conditional action is currently
  in progress against this resource. Please try again.

    * `InternalError` - The service was unable to apply the provided tag
  to the object.

  The following operations are related to `PutObjectTagging`:

    *
  [GetObjectTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html)     *
  [DeleteObjectTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObjectTagging.html)
  """
  def put_object_tagging(%Client{} = client, bucket, key, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?tagging"

    {headers, input} =
      [
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ContentMD5", "Content-MD5"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"},
        {"RequestPayer", "x-amz-request-payer"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"VersionId", "versionId"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-version-id", "VersionId"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Creates or modifies the `PublicAccessBlock` configuration for an Amazon S3
  bucket.

  To use this operation, you must have the `s3:PutBucketPublicAccessBlock`
  permission. For more information about Amazon S3 permissions, see [Specifying Permissions in a
  Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html).

  When Amazon S3 evaluates the `PublicAccessBlock` configuration for a bucket or
  an object, it checks the `PublicAccessBlock` configuration for both the bucket
  (or the bucket that contains the object) and the bucket owner's account. If the
  `PublicAccessBlock` configurations are different between the bucket and the
  account, Amazon S3 uses the most restrictive combination of the bucket-level and
  account-level settings.

  For more information about when Amazon S3 considers a bucket or an object
  public, see [The Meaning of "Public"](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status).

  The following operations are related to `PutPublicAccessBlock`:

    *
  [GetPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetPublicAccessBlock.html)     *
  [DeletePublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeletePublicAccessBlock.html)

    *
  [GetBucketPolicyStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketPolicyStatus.html)     * [Using Amazon S3 Block Public
  Access](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html)
  """
  def put_public_access_block(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}?publicAccessBlock"

    {headers, input} =
      [
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ContentMD5", "Content-MD5"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Restores an archived copy of an object back into Amazon S3

  This action is not supported by Amazon S3 on Outposts.

  This action performs the following types of requests:

    * `select` - Perform a select query on an archived object

    * `restore an archive` - Restore an archived object

  For more information about the `S3` structure in the request body, see the
  following:

    *
  [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)     * [Managing Access with
  ACLs](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html) in
  the *Amazon S3 User Guide*

    * [Protecting Data Using Server-Side Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html)
  in the *Amazon S3 User Guide*

  Define the SQL expression for the `SELECT` type of restoration for your query in
  the request body's `SelectParameters` structure. You can use expressions like
  the following examples.

    * The following expression returns all records from the specified
  object.

  `SELECT * FROM Object`

    * Assuming that you are not using any headers for data stored in the
  object, you can specify columns with positional headers.

  `SELECT s._1, s._2 FROM Object s WHERE s._3 > 100`

    * If you have headers and you set the `fileHeaderInfo` in the `CSV`
  structure in the request body to `USE`, you can specify headers in the query.
  (If you set the `fileHeaderInfo` field to `IGNORE`, the first row is skipped for
  the query.) You cannot mix ordinal positions with header column names.

  `SELECT s.Id, s.FirstName, s.SSN FROM S3Object s`

  When making a select request, you can also do the following:

    * To expedite your queries, specify the `Expedited` tier. For more
  information about tiers, see "Restoring Archives," later in this topic.

    * Specify details about the data serialization format of both the
  input object that is being queried and the serialization of the CSV-encoded
  query results.

  The following are additional important facts about the select feature:

    * The output results are new Amazon S3 objects. Unlike archive
  retrievals, they are stored until explicitly deleted-manually or through a
  lifecycle configuration.

    * You can issue more than one select request on the same Amazon S3
  object. Amazon S3 doesn't duplicate requests, so avoid issuing duplicate
  requests.

    * Amazon S3 accepts a select request even if the object has already
  been restored. A select request doesn’t return error response `409`.

  ## Definitions

  ### Permissions

  To use this operation, you must have permissions to perform the
  `s3:RestoreObject` action. The bucket owner has this permission by default and
  can grant this permission to others. For more information about permissions, see
  [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
  in the *Amazon S3 User Guide*.

  ### Restoring objects

  Objects that you archive to the S3 Glacier Flexible Retrieval Flexible Retrieval
  or S3 Glacier Deep Archive storage class, and S3 Intelligent-Tiering Archive or
  S3 Intelligent-Tiering Deep Archive tiers, are not accessible in real time. For
  objects in the S3 Glacier Flexible Retrieval Flexible Retrieval or S3 Glacier
  Deep Archive storage classes, you must first initiate a restore request, and
  then wait until a temporary copy of the object is available. If you want a
  permanent copy of the object, create a copy of it in the Amazon S3 Standard
  storage class in your S3 bucket. To access an archived object, you must restore
  the object for the duration (number of days) that you specify. For objects in
  the Archive Access or Deep Archive Access tiers of S3 Intelligent-Tiering, you
  must first initiate a restore request, and then wait until the object is moved
  into the Frequent Access tier.

  To restore a specific object version, you can provide a version ID. If you don't
  provide a version ID, Amazon S3 restores the current version.

  When restoring an archived object, you can specify one of the following data
  access tier options in the `Tier` element of the request body:

     `Expedited` - Expedited retrievals allow you to quickly access your
  data stored in the S3 Glacier Flexible Retrieval Flexible Retrieval storage
  class or S3 Intelligent-Tiering Archive tier when occasional urgent requests for
  restoring archives are required. For all but the largest archived objects (250
  MB+), data accessed using Expedited retrievals is typically made available
  within 1–5 minutes. Provisioned capacity ensures that retrieval capacity for
  Expedited retrievals is available when you need it. Expedited retrievals and
  provisioned capacity are not available for objects stored in the S3 Glacier Deep
  Archive storage class or S3 Intelligent-Tiering Deep Archive tier.

     `Standard` - Standard retrievals allow you to access any of your
  archived objects within several hours. This is the default option for retrieval
  requests that do not specify the retrieval option. Standard retrievals typically
  finish within 3–5 hours for objects stored in the S3 Glacier Flexible Retrieval
  Flexible Retrieval storage class or S3 Intelligent-Tiering Archive tier. They
  typically finish within 12 hours for objects stored in the S3 Glacier Deep
  Archive storage class or S3 Intelligent-Tiering Deep Archive tier. Standard
  retrievals are free for objects stored in S3 Intelligent-Tiering.

     `Bulk` - Bulk retrievals free for objects stored in the S3 Glacier
  Flexible Retrieval and S3 Intelligent-Tiering storage classes, enabling you to
  retrieve large amounts, even petabytes, of data at no cost. Bulk retrievals
  typically finish within 5–12 hours for objects stored in the S3 Glacier Flexible
  Retrieval Flexible Retrieval storage class or S3 Intelligent-Tiering Archive
  tier. Bulk retrievals are also the lowest-cost retrieval option when restoring
  objects from S3 Glacier Deep Archive. They typically finish within 48 hours for
  objects stored in the S3 Glacier Deep Archive storage class or S3
  Intelligent-Tiering Deep Archive tier.

  For more information about archive retrieval options and provisioned capacity
  for `Expedited` data access, see [Restoring Archived Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html)
  in the *Amazon S3 User Guide*.

  You can use Amazon S3 restore speed upgrade to change the restore speed to a
  faster speed while it is in progress. For more information, see [ Upgrading the speed of an in-progress
  restore](https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html#restoring-objects-upgrade-tier.title.html)
  in the *Amazon S3 User Guide*.

  To get the status of object restoration, you can send a `HEAD` request.
  Operations return the `x-amz-restore` header, which provides information about
  the restoration status, in the response. You can use Amazon S3 event
  notifications to notify you when a restore is initiated or completed. For more
  information, see [Configuring Amazon S3 Event Notifications](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html)
  in the *Amazon S3 User Guide*.

  After restoring an archived object, you can update the restoration period by
  reissuing the request with a new period. Amazon S3 updates the restoration
  period relative to the current time and charges only for the request-there are
  no data transfer charges. You cannot update the restoration period when Amazon
  S3 is actively processing your current restore request for the object.

  If your bucket has a lifecycle configuration with a rule that includes an
  expiration action, the object expiration overrides the life span that you
  specify in a restore request. For example, if you restore an object copy for 10
  days, but the object is scheduled to expire in 3 days, Amazon S3 deletes the
  object in 3 days. For more information about lifecycle configuration, see
  [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html) and [Object Lifecycle
  Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)
  in *Amazon S3 User Guide*.

  ### Responses

  A successful action returns either the `200 OK` or `202 Accepted` status code.

     If the object is not previously restored, then Amazon S3 returns
  `202 Accepted` in the response.

     If the object is previously restored, Amazon S3 returns `200 OK` in
  the response.

     Special errors:

       *Code: RestoreAlreadyInProgress*

       *Cause: Object restore is already in progress. (This
  error does not apply to SELECT type requests.)*

       *HTTP Status Code: 409 Conflict*

       *SOAP Fault Code Prefix: Client*

          *Code:
  GlacierExpeditedRetrievalNotAvailable*

       *Cause: expedited retrievals are currently not
  available. Try again later. (Returned if there is insufficient capacity to
  process the Expedited request. This error applies only to Expedited retrievals
  and not to S3 Standard or Bulk retrievals.)*

       *HTTP Status Code: 503*

       *SOAP Fault Code Prefix: N/A*

  The following operations are related to `RestoreObject`:

    *
  [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html)     *
  [GetBucketNotificationConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketNotificationConfiguration.html)
  """
  def restore_object(%Client{} = client, bucket, key, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?restore"

    {headers, input} =
      [
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"},
        {"RequestPayer", "x-amz-request-payer"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"VersionId", "versionId"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-restore-output-path", "RestoreOutputPath"}
        ]
      )

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
      nil
    )
  end

  @doc """
  This action filters the contents of an Amazon S3 object based on a simple
  structured query language (SQL) statement.

  In the request, along with the SQL expression, you must also specify a data
  serialization format (JSON, CSV, or Apache Parquet) of the object. Amazon S3
  uses this format to parse object data into records, and returns only records
  that match the specified SQL expression. You must also specify the data
  serialization format for the response.

  This action is not supported by Amazon S3 on Outposts.

  For more information about Amazon S3 Select, see [Selecting Content from Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/selecting-content-from-objects.html)
  and [SELECT Command](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-glacier-select-sql-reference-select.html)
  in the *Amazon S3 User Guide*.

  ## Definitions

  ### Permissions

  You must have `s3:GetObject` permission for this operation. Amazon S3 Select
  does not support anonymous access. For more information about permissions, see
  [Specifying Permissions in a Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html)
  in the *Amazon S3 User Guide*.

  ### Object Data Formats

  You can use Amazon S3 Select to query objects that have the following format
  properties:

     *CSV, JSON, and Parquet* - Objects must be in CSV, JSON, or Parquet
  format.

     *UTF-8* - UTF-8 is the only encoding type Amazon S3 Select
  supports.

     *GZIP or BZIP2* - CSV and JSON files can be compressed using GZIP
  or BZIP2. GZIP and BZIP2 are the only compression formats that Amazon S3 Select
  supports for CSV and JSON files. Amazon S3 Select supports columnar compression
  for Parquet using GZIP or Snappy. Amazon S3 Select does not support whole-object
  compression for Parquet objects.

     *Server-side encryption* - Amazon S3 Select supports querying
  objects that are protected with server-side encryption.

  For objects that are encrypted with customer-provided encryption keys (SSE-C),
  you must use HTTPS, and you must use the headers that are documented in the
  [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html). For more information about SSE-C, see [Server-Side Encryption (Using
  Customer-Provided Encryption
  Keys)](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html)
  in the *Amazon S3 User Guide*.

  For objects that are encrypted with Amazon S3 managed keys (SSE-S3) and Amazon
  Web Services KMS keys (SSE-KMS), server-side encryption is handled
  transparently, so you don't need to specify anything. For more information about
  server-side encryption, including SSE-S3 and SSE-KMS, see [Protecting Data Using Server-Side
  Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html)
  in the *Amazon S3 User Guide*.

  ### Working with the Response Body

  Given the response size is unknown, Amazon S3 Select streams the response as a
  series of messages and includes a `Transfer-Encoding` header with `chunked` as
  its value in the response. For more information, see [Appendix: SelectObjectContent
  Response](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTSelectObjectAppendix.html).

  ### GetObject Support

  The `SelectObjectContent` action does not support the following `GetObject`
  functionality. For more information, see
  [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html).     `Range`: Although you can specify a scan range for an Amazon S3
  Select request (see [SelectObjectContentRequest -
  ScanRange](https://docs.aws.amazon.com/AmazonS3/latest/API/API_SelectObjectContent.html#AmazonS3-SelectObjectContent-request-ScanRange)
  in the request parameters), you cannot specify the range of bytes of an object
  to return.

     The `GLACIER`, `DEEP_ARCHIVE`, and `REDUCED_REDUNDANCY` storage
  classes, or the `ARCHIVE_ACCESS` and `DEEP_ARCHIVE_ACCESS` access tiers of the
  `INTELLIGENT_TIERING` storage class: You cannot query objects in the `GLACIER`,
  `DEEP_ARCHIVE`, or `REDUCED_REDUNDANCY` storage classes, nor objects in the
  `ARCHIVE_ACCESS` or `DEEP_ARCHIVE_ACCESS` access tiers of the
  `INTELLIGENT_TIERING` storage class. For more information about storage classes,
  see [Using Amazon S3 storage classes](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-class-intro.html)
  in the *Amazon S3 User Guide*.

  ### Special Errors

  For a list of special errors for this operation, see [List of SELECT Object Content Error
  Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#SelectObjectContentErrorCodeList)

  The following operations are related to `SelectObjectContent`:

    *
  [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)     *
  [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html)

    *
  [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html)
  """
  def select_object_content(%Client{} = client, bucket, key, input, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}?select&select-type=2"

    {headers, input} =
      [
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"},
        {"SSECustomerAlgorithm", "x-amz-server-side-encryption-customer-algorithm"},
        {"SSECustomerKey", "x-amz-server-side-encryption-customer-key"},
        {"SSECustomerKeyMD5", "x-amz-server-side-encryption-customer-key-MD5"}
      ]
      |> Request.build_params(input)

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
      nil
    )
  end

  @doc """
  Uploads a part in a multipart upload.

  In this operation, you provide part data in your request. However, you have an
  option to specify your existing Amazon S3 object as a data source for the part
  you are uploading. To upload a part from an existing object, you use the
  [UploadPartCopy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html) operation.

  You must initiate a multipart upload (see
  [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html))
  before you can upload any part. In response to your initiate request, Amazon S3
  returns an upload ID, a unique identifier, that you must include in your upload
  part request.

  Part numbers can be any number from 1 to 10,000, inclusive. A part number
  uniquely identifies a part and also defines its position within the object being
  created. If you upload a new part using the same part number that was used with
  a previous part, the previously uploaded part is overwritten.

  For information about maximum and minimum part sizes and other multipart upload
  specifications, see [Multipart upload limits](https://docs.aws.amazon.com/AmazonS3/latest/userguide/qfacts.html) in
  the *Amazon S3 User Guide*.

  To ensure that data is not corrupted when traversing the network, specify the
  `Content-MD5` header in the upload part request. Amazon S3 checks the part data
  against the provided MD5 value. If they do not match, Amazon S3 returns an
  error.

  If the upload request is signed with Signature Version 4, then Amazon Web
  Services S3 uses the `x-amz-content-sha256` header as a checksum instead of
  `Content-MD5`. For more information see [Authenticating Requests: Using the Authorization Header (Amazon Web Services Signature Version
  4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-auth-using-authorization-header.html).

  **Note:** After you initiate multipart upload and upload one or more parts, you
  must either complete or abort multipart upload in order to stop getting charged
  for storage of the uploaded parts. Only after you either complete or abort
  multipart upload, Amazon S3 frees up the parts storage and stops charging you
  for the parts storage.

  For more information on multipart uploads, go to [Multipart Upload Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html) in
  the *Amazon S3 User Guide *.

  For information on the permissions required to use the multipart upload API, go
  to [Multipart Upload and Permissions](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html)
  in the *Amazon S3 User Guide*.

  Server-side encryption is for data encryption at rest. Amazon S3 encrypts your
  data as it writes it to disks in its data centers and decrypts it when you
  access it. You have three mutually exclusive options to protect data using
  server-side encryption in Amazon S3, depending on how you choose to manage the
  encryption keys. Specifically, the encryption key options are Amazon S3 managed
  keys (SSE-S3), Amazon Web Services KMS keys (SSE-KMS), and Customer-Provided
  Keys (SSE-C). Amazon S3 encrypts data with server-side encryption using Amazon
  S3 managed keys (SSE-S3) by default. You can optionally tell Amazon S3 to
  encrypt data at rest using server-side encryption with other key options. The
  option you use depends on whether you want to use KMS keys (SSE-KMS) or provide
  your own encryption key (SSE-C). If you choose to provide your own encryption
  key, the request headers you provide in the request must match the headers you
  used in the request to initiate the upload by using
  [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html). For more information, go to [Using Server-Side
  Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html)
  in the *Amazon S3 User Guide*.

  Server-side encryption is supported by the S3 Multipart Upload actions. Unless
  you are using a customer-provided encryption key (SSE-C), you don't need to
  specify the encryption parameters in each UploadPart request. Instead, you only
  need to specify the server-side encryption parameters in the initial Initiate
  Multipart request. For more information, see
  [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html).  If you requested server-side encryption using a customer-provided encryption key
  (SSE-C) in your initiate multipart upload request, you must provide identical
  encryption information in each part upload using the following headers.

    * x-amz-server-side-encryption-customer-algorithm

    * x-amz-server-side-encryption-customer-key

    * x-amz-server-side-encryption-customer-key-MD5

  `UploadPart` has the following special errors:

    *     * *Code: NoSuchUpload*

      * *Cause: The specified multipart upload does not exist.
  The upload ID might be invalid, or the multipart upload might have been aborted
  or completed.*

      * * HTTP Status Code: 404 Not Found *

      * *SOAP Fault Code Prefix: Client*

  The following operations are related to `UploadPart`:

    *
  [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)

    *
  [CompleteMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)     *
  [AbortMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)

    *
  [ListParts](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)     *
  [ListMultipartUploads](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html)
  """
  def upload_part(%Client{} = client, bucket, key, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}"

    {headers, input} =
      [
        {"ChecksumAlgorithm", "x-amz-sdk-checksum-algorithm"},
        {"ChecksumCRC32", "x-amz-checksum-crc32"},
        {"ChecksumCRC32C", "x-amz-checksum-crc32c"},
        {"ChecksumSHA1", "x-amz-checksum-sha1"},
        {"ChecksumSHA256", "x-amz-checksum-sha256"},
        {"ContentLength", "Content-Length"},
        {"ContentMD5", "Content-MD5"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"},
        {"RequestPayer", "x-amz-request-payer"},
        {"SSECustomerAlgorithm", "x-amz-server-side-encryption-customer-algorithm"},
        {"SSECustomerKey", "x-amz-server-side-encryption-customer-key"},
        {"SSECustomerKeyMD5", "x-amz-server-side-encryption-customer-key-MD5"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"PartNumber", "partNumber"},
        {"UploadId", "uploadId"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"x-amz-checksum-crc32", "ChecksumCRC32"},
          {"x-amz-checksum-crc32c", "ChecksumCRC32C"},
          {"x-amz-checksum-sha1", "ChecksumSHA1"},
          {"x-amz-checksum-sha256", "ChecksumSHA256"},
          {"ETag", "ETag"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption-customer-algorithm", "SSECustomerAlgorithm"},
          {"x-amz-server-side-encryption-customer-key-MD5", "SSECustomerKeyMD5"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"}
        ]
      )

    options =
      Keyword.put(
        options,
        :send_body_as_binary?,
        true
      )

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Uploads a part by copying data from an existing object as data source.

  You specify the data source by adding the request header `x-amz-copy-source` in
  your request and a byte range by adding the request header
  `x-amz-copy-source-range` in your request.

  For information about maximum and minimum part sizes and other multipart upload
  specifications, see [Multipart upload limits](https://docs.aws.amazon.com/AmazonS3/latest/userguide/qfacts.html) in
  the *Amazon S3 User Guide*.

  Instead of using an existing object as part data, you might use the
  [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html) action and provide data in your request.

  You must initiate a multipart upload before you can upload any part. In response
  to your initiate request. Amazon S3 returns a unique identifier, the upload ID,
  that you must include in your upload part request.

  For more information about using the `UploadPartCopy` operation, see the
  following:

    * For conceptual information about multipart uploads, see [Uploading
  Objects Using Multipart
  Upload](https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html)
  in the *Amazon S3 User Guide*.

    * For information about permissions required to use the multipart
  upload API, see [Multipart Upload and Permissions](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html)
  in the *Amazon S3 User Guide*.

    * For information about copying objects using a single atomic action
  vs. a multipart upload, see [Operations on Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectOperations.html)
  in the *Amazon S3 User Guide*.

    * For information about using server-side encryption with
  customer-provided encryption keys with the `UploadPartCopy` operation, see
  [CopyObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html) and
  [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html).

  Note the following additional considerations about the request headers
  `x-amz-copy-source-if-match`, `x-amz-copy-source-if-none-match`,
  `x-amz-copy-source-if-unmodified-since`, and
  `x-amz-copy-source-if-modified-since`:

    * **Consideration 1** - If both of the `x-amz-copy-source-if-match`
  and `x-amz-copy-source-if-unmodified-since` headers are present in the request
  as follows:

  `x-amz-copy-source-if-match` condition evaluates to `true`, and;

  `x-amz-copy-source-if-unmodified-since` condition evaluates to `false`;

  Amazon S3 returns `200 OK` and copies the data.

    * **Consideration 2** - If both of the
  `x-amz-copy-source-if-none-match` and `x-amz-copy-source-if-modified-since`
  headers are present in the request as follows:

  `x-amz-copy-source-if-none-match` condition evaluates to `false`, and;

  `x-amz-copy-source-if-modified-since` condition evaluates to `true`;

  Amazon S3 returns `412 Precondition Failed` response code.

  ## Definitions

  ### Versioning

  If your bucket has versioning enabled, you could have multiple versions of the
  same object. By default, `x-amz-copy-source` identifies the current version of
  the object to copy. If the current version is a delete marker and you don't
  specify a versionId in the `x-amz-copy-source`, Amazon S3 returns a 404 error,
  because the object does not exist. If you specify versionId in the
  `x-amz-copy-source` and the versionId is a delete marker, Amazon S3 returns an
  HTTP 400 error, because you are not allowed to specify a delete marker as a
  version for the `x-amz-copy-source`.

  You can optionally specify a specific version of the source object to copy by
  adding the `versionId` subresource as shown in the following example:

  `x-amz-copy-source: /bucket/object?versionId=version id`

  ### Special errors

          *Code: NoSuchUpload*

       *Cause: The specified multipart upload does not exist.
  The upload ID might be invalid, or the multipart upload might have been aborted
  or completed.*

       *HTTP Status Code: 404 Not Found*

          *Code: InvalidRequest*

       *Cause: The specified copy source is not supported as a
  byte-range copy source.*

       *HTTP Status Code: 400 Bad Request*

  The following operations are related to `UploadPartCopy`:

    *
  [CreateMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html)     *
  [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)

    *
  [CompleteMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html)     *
  [AbortMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html)

    *
  [ListParts](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)     *
  [ListMultipartUploads](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html)
  """
  def upload_part_copy(%Client{} = client, bucket, key, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(bucket)}/#{AWS.Util.encode_multi_segment_uri(key)}"

    {headers, input} =
      [
        {"CopySource", "x-amz-copy-source"},
        {"CopySourceIfMatch", "x-amz-copy-source-if-match"},
        {"CopySourceIfModifiedSince", "x-amz-copy-source-if-modified-since"},
        {"CopySourceIfNoneMatch", "x-amz-copy-source-if-none-match"},
        {"CopySourceIfUnmodifiedSince", "x-amz-copy-source-if-unmodified-since"},
        {"CopySourceRange", "x-amz-copy-source-range"},
        {"CopySourceSSECustomerAlgorithm",
         "x-amz-copy-source-server-side-encryption-customer-algorithm"},
        {"CopySourceSSECustomerKey", "x-amz-copy-source-server-side-encryption-customer-key"},
        {"CopySourceSSECustomerKeyMD5",
         "x-amz-copy-source-server-side-encryption-customer-key-MD5"},
        {"ExpectedBucketOwner", "x-amz-expected-bucket-owner"},
        {"ExpectedSourceBucketOwner", "x-amz-source-expected-bucket-owner"},
        {"RequestPayer", "x-amz-request-payer"},
        {"SSECustomerAlgorithm", "x-amz-server-side-encryption-customer-algorithm"},
        {"SSECustomerKey", "x-amz-server-side-encryption-customer-key"},
        {"SSECustomerKeyMD5", "x-amz-server-side-encryption-customer-key-MD5"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"PartNumber", "partNumber"},
        {"UploadId", "uploadId"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-server-side-encryption-bucket-key-enabled", "BucketKeyEnabled"},
          {"x-amz-copy-source-version-id", "CopySourceVersionId"},
          {"x-amz-request-charged", "RequestCharged"},
          {"x-amz-server-side-encryption-customer-algorithm", "SSECustomerAlgorithm"},
          {"x-amz-server-side-encryption-customer-key-MD5", "SSECustomerKeyMD5"},
          {"x-amz-server-side-encryption-aws-kms-key-id", "SSEKMSKeyId"},
          {"x-amz-server-side-encryption", "ServerSideEncryption"}
        ]
      )

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Passes transformed objects to a `GetObject` operation when using Object Lambda
  access points.

  For information about Object Lambda access points, see [Transforming objects with Object Lambda access
  points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/transforming-objects.html)
  in the *Amazon S3 User Guide*.

  This operation supports metadata that can be returned by
  [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html), in addition to `RequestRoute`, `RequestToken`, `StatusCode`, `ErrorCode`, and
  `ErrorMessage`. The `GetObject` response metadata is supported so that the
  `WriteGetObjectResponse` caller, typically an Lambda function, can provide the
  same metadata when it internally invokes `GetObject`. When
  `WriteGetObjectResponse` is called by a customer-owned Lambda function, the
  metadata returned to the end user `GetObject` call might differ from what Amazon
  S3 would normally return.

  You can include any number of metadata headers. When including a metadata
  header, it should be prefaced with `x-amz-meta`. For example,
  `x-amz-meta-my-custom-header: MyCustomValue`. The primary use case for this is
  to forward `GetObject` metadata.

  Amazon Web Services provides some prebuilt Lambda functions that you can use
  with S3 Object Lambda to detect and redact personally identifiable information
  (PII) and decompress S3 objects. These Lambda functions are available in the
  Amazon Web Services Serverless Application Repository, and can be selected
  through the Amazon Web Services Management Console when you create your Object
  Lambda access point.

  Example 1: PII Access Control - This Lambda function uses Amazon Comprehend, a
  natural language processing (NLP) service using machine learning to find
  insights and relationships in text. It automatically detects personally
  identifiable information (PII) such as names, addresses, dates, credit card
  numbers, and social security numbers from documents in your Amazon S3 bucket.

  Example 2: PII Redaction - This Lambda function uses Amazon Comprehend, a
  natural language processing (NLP) service using machine learning to find
  insights and relationships in text. It automatically redacts personally
  identifiable information (PII) such as names, addresses, dates, credit card
  numbers, and social security numbers from documents in your Amazon S3 bucket.

  Example 3: Decompression - The Lambda function S3ObjectLambdaDecompression, is
  equipped to decompress objects stored in S3 in one of six compressed file
  formats including bzip2, gzip, snappy, zlib, zstandard and ZIP.

  For information on how to view and use these functions, see [Using Amazon Web
  Services built Lambda
  functions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/olap-examples.html)
  in the *Amazon S3 User Guide*.
  """
  def write_get_object_response(%Client{} = client, input, options \\ []) do
    url_path = "/WriteGetObjectResponse"

    {headers, input} =
      [
        {"ErrorMessage", "x-amz-fwd-error-message"},
        {"ChecksumCRC32C", "x-amz-fwd-header-x-amz-checksum-crc32c"},
        {"DeleteMarker", "x-amz-fwd-header-x-amz-delete-marker"},
        {"ObjectLockRetainUntilDate", "x-amz-fwd-header-x-amz-object-lock-retain-until-date"},
        {"RequestToken", "x-amz-request-token"},
        {"Restore", "x-amz-fwd-header-x-amz-restore"},
        {"RequestRoute", "x-amz-request-route"},
        {"StatusCode", "x-amz-fwd-status"},
        {"BucketKeyEnabled", "x-amz-fwd-header-x-amz-server-side-encryption-bucket-key-enabled"},
        {"ContentType", "x-amz-fwd-header-Content-Type"},
        {"SSECustomerKeyMD5", "x-amz-fwd-header-x-amz-server-side-encryption-customer-key-MD5"},
        {"ObjectLockLegalHoldStatus", "x-amz-fwd-header-x-amz-object-lock-legal-hold"},
        {"VersionId", "x-amz-fwd-header-x-amz-version-id"},
        {"AcceptRanges", "x-amz-fwd-header-accept-ranges"},
        {"ContentLanguage", "x-amz-fwd-header-Content-Language"},
        {"SSECustomerAlgorithm",
         "x-amz-fwd-header-x-amz-server-side-encryption-customer-algorithm"},
        {"ContentEncoding", "x-amz-fwd-header-Content-Encoding"},
        {"ChecksumSHA256", "x-amz-fwd-header-x-amz-checksum-sha256"},
        {"ETag", "x-amz-fwd-header-ETag"},
        {"LastModified", "x-amz-fwd-header-Last-Modified"},
        {"ErrorCode", "x-amz-fwd-error-code"},
        {"ContentRange", "x-amz-fwd-header-Content-Range"},
        {"Expires", "x-amz-fwd-header-Expires"},
        {"TagCount", "x-amz-fwd-header-x-amz-tagging-count"},
        {"Expiration", "x-amz-fwd-header-x-amz-expiration"},
        {"ReplicationStatus", "x-amz-fwd-header-x-amz-replication-status"},
        {"CacheControl", "x-amz-fwd-header-Cache-Control"},
        {"StorageClass", "x-amz-fwd-header-x-amz-storage-class"},
        {"MissingMeta", "x-amz-fwd-header-x-amz-missing-meta"},
        {"ContentLength", "Content-Length"},
        {"ObjectLockMode", "x-amz-fwd-header-x-amz-object-lock-mode"},
        {"ContentDisposition", "x-amz-fwd-header-Content-Disposition"},
        {"RequestCharged", "x-amz-fwd-header-x-amz-request-charged"},
        {"ServerSideEncryption", "x-amz-fwd-header-x-amz-server-side-encryption"},
        {"PartsCount", "x-amz-fwd-header-x-amz-mp-parts-count"},
        {"SSEKMSKeyId", "x-amz-fwd-header-x-amz-server-side-encryption-aws-kms-key-id"},
        {"ChecksumCRC32", "x-amz-fwd-header-x-amz-checksum-crc32"},
        {"ChecksumSHA1", "x-amz-fwd-header-x-amz-checksum-sha1"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :send_body_as_binary?,
        true
      )

    meta = metadata() |> Map.put_new(:host_prefix, "{RequestRoute}.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
