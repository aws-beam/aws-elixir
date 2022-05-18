# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KMS do
  @moduledoc """
  Key Management Service

  Key Management Service (KMS) is an encryption and key management web service.

  This guide describes the KMS operations that you can call programmatically. For
  general information about KMS, see the [ *Key Management Service Developer Guide* ](https://docs.aws.amazon.com/kms/latest/developerguide/).

  KMS is replacing the term *customer master key (CMK)* with *KMS key* and *KMS
  key*. The concept has not changed. To prevent breaking changes, KMS is keeping
  some variations of this term.

  Amazon Web Services provides SDKs that consist of libraries and sample code for
  various programming languages and platforms (Java, Ruby, .Net, macOS, Android,
  etc.). The SDKs provide a convenient way to create programmatic access to KMS
  and other Amazon Web Services services. For example, the SDKs take care of tasks
  such as signing requests (see below), managing errors, and retrying requests
  automatically. For more information about the Amazon Web Services SDKs,
  including how to download and install them, see [Tools for Amazon Web Services](http://aws.amazon.com/tools/).

  We recommend that you use the Amazon Web Services SDKs to make programmatic API
  calls to KMS.

  If you need to use FIPS 140-2 validated cryptographic modules when communicating
  with Amazon Web Services, use the FIPS endpoint in your preferred Amazon Web
  Services Region. For more information about the available FIPS endpoints, see
  [Service endpoints](https://docs.aws.amazon.com/general/latest/gr/kms.html#kms_region) in
  the Key Management Service topic of the *Amazon Web Services General Reference*.

  All KMS API calls must be signed and be transmitted using Transport Layer
  Security (TLS). KMS recommends you always use the latest supported TLS version.
  Clients must also support cipher suites with Perfect Forward Secrecy (PFS) such
  as Ephemeral Diffie-Hellman (DHE) or Elliptic Curve Ephemeral Diffie-Hellman
  (ECDHE). Most modern systems such as Java 7 and later support these modes.

  ## Signing Requests

  Requests must be signed by using an access key ID and a secret access key. We
  strongly recommend that you *do not* use your Amazon Web Services account (root)
  access key ID and secret key for everyday work with KMS. Instead, use the access
  key ID and secret access key for an IAM user. You can also use the Amazon Web
  Services Security Token Service to generate temporary security credentials that
  you can use to sign requests.

  All KMS operations require [Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  ## Logging API Requests

  KMS supports CloudTrail, a service that logs Amazon Web Services API calls and
  related events for your Amazon Web Services account and delivers them to an
  Amazon S3 bucket that you specify. By using the information collected by
  CloudTrail, you can determine what requests were made to KMS, who made the
  request, when it was made, and so on. To learn more about CloudTrail, including
  how to turn it on and find your log files, see the [CloudTrail User Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/).

  ## Additional Resources

  For more information about credentials and request signing, see the following:

    * [Amazon Web Services Security Credentials](https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html)
  - This topic provides general information about the types of credentials used to
  access Amazon Web Services.

    * [Temporary Security Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html)
  - This section of the *IAM User Guide* describes how to create and use temporary
  security credentials.

    * [Signature Version 4 Signing Process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html)
  - This set of topics walks you through the process of signing a request using an
  access key ID and a secret access key.

  ## Commonly Used API Operations

  Of the API operations discussed in this guide, the following will prove the most
  useful for most applications. You will likely perform operations other than
  these, such as creating keys and assigning policies, by using the console.

    * `Encrypt`

    * `Decrypt`

    * `GenerateDataKey`

    * `GenerateDataKeyWithoutPlaintext`
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "KMS",
      api_version: "2014-11-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kms",
      global?: false,
      protocol: "json",
      service_id: "KMS",
      signature_version: "v4",
      signing_name: "kms",
      target_prefix: "TrentService"
    }
  end

  @doc """
  Cancels the deletion of a KMS key.

  When this operation succeeds, the key state of the KMS key is `Disabled`. To
  enable the KMS key, use `EnableKey`.

  For more information about scheduling and canceling deletion of a KMS key, see
  [Deleting KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html)
  in the *Key Management Service Developer Guide*.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: No. You cannot perform this operation on a KMS key in a
  different Amazon Web Services account.

  **Required permissions**:
  [kms:CancelKeyDeletion](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  **Related operations**: `ScheduleKeyDeletion`
  """
  def cancel_key_deletion(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CancelKeyDeletion", input, options)
  end

  @doc """
  Connects or reconnects a [custom key store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  to its associated CloudHSM cluster.

  The custom key store must be connected before you can create KMS keys in the key
  store or use the KMS keys it contains. You can disconnect and reconnect a custom
  key store at any time.

  To connect a custom key store, its associated CloudHSM cluster must have at
  least one active HSM. To get the number of active HSMs in a cluster, use the
  [DescribeClusters](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html) operation. To add HSMs to the cluster, use the
  [CreateHsm](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_CreateHsm.html)
  operation. Also, the [ `kmsuser` crypto user](https://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser)
  (CU) must not be logged into the cluster. This prevents KMS from using this
  account to log in.

  The connection process can take an extended amount of time to complete; up to 20
  minutes. This operation starts the connection process, but it does not wait for
  it to complete. When it succeeds, this operation quickly returns an HTTP 200
  response and a JSON object with no properties. However, this response does not
  indicate that the custom key store is connected. To get the connection state of
  the custom key store, use the `DescribeCustomKeyStores` operation.

  During the connection process, KMS finds the CloudHSM cluster that is associated
  with the custom key store, creates the connection infrastructure, connects to
  the cluster, logs into the CloudHSM client as the `kmsuser` CU, and rotates its
  password.

  The `ConnectCustomKeyStore` operation might fail for various reasons. To find
  the reason, use the `DescribeCustomKeyStores` operation and see the
  `ConnectionErrorCode` in the response. For help interpreting the
  `ConnectionErrorCode`, see `CustomKeyStoresListEntry`.

  To fix the failure, use the `DisconnectCustomKeyStore` operation to disconnect
  the custom key store, correct the error, use the `UpdateCustomKeyStore`
  operation if necessary, and then use `ConnectCustomKeyStore` again.

  If you are having trouble connecting or disconnecting a custom key store, see
  [Troubleshooting a Custom Key Store](https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html)
  in the *Key Management Service Developer Guide*.

  **Cross-account use**: No. You cannot perform this operation on a custom key
  store in a different Amazon Web Services account.

  **Required permissions**:
  [kms:ConnectCustomKeyStore](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (IAM policy)

  ## Related operations

    * `CreateCustomKeyStore`

    * `DeleteCustomKeyStore`

    * `DescribeCustomKeyStores`

    * `DisconnectCustomKeyStore`

    * `UpdateCustomKeyStore`
  """
  def connect_custom_key_store(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ConnectCustomKeyStore", input, options)
  end

  @doc """
  Creates a friendly name for a KMS key.

  Adding, deleting, or updating an alias can allow or deny permission to the KMS
  key. For details, see [ABAC in KMS](https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in the
  *Key Management Service Developer Guide*.

  You can use an alias to identify a KMS key in the KMS console, in the
  `DescribeKey` operation and in [cryptographic operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations),
  such as `Encrypt` and `GenerateDataKey`. You can also change the KMS key that's
  associated with the alias (`UpdateAlias`) or delete the alias (`DeleteAlias`) at
  any time. These operations don't affect the underlying KMS key.

  You can associate the alias with any customer managed key in the same Amazon Web
  Services Region. Each alias is associated with only one KMS key at a time, but a
  KMS key can have multiple aliases. A valid KMS key is required. You can't create
  an alias without a KMS key.

  The alias must be unique in the account and Region, but you can have aliases
  with the same name in different Regions. For detailed information about aliases,
  see [Using aliases](https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html)
  in the *Key Management Service Developer Guide*.

  This operation does not return a response. To get the alias that you created,
  use the `ListAliases` operation.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: No. You cannot perform this operation on an alias in a
  different Amazon Web Services account.

  ## Required permissions

    *
  [kms:CreateAlias](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html) on the alias (IAM policy).

    *
  [kms:CreateAlias](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  on the KMS key (key policy).

  For details, see [Controlling access to aliases](https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access)
  in the *Key Management Service Developer Guide*.

  ## Related operations:

    * `DeleteAlias`

    * `ListAliases`

    * `UpdateAlias`
  """
  def create_alias(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateAlias", input, options)
  end

  @doc """
  Creates a [custom key store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  that is associated with an [CloudHSM cluster](https://docs.aws.amazon.com/cloudhsm/latest/userguide/clusters.html)
  that you own and manage.

  This operation is part of the [Custom Key Store feature](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  feature in KMS, which combines the convenience and extensive integration of KMS
  with the isolation and control of a single-tenant key store.

  Before you create the custom key store, you must assemble the required elements,
  including an CloudHSM cluster that fulfills the requirements for a custom key
  store. For details about the required elements, see [Assemble the Prerequisites](https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore)
  in the *Key Management Service Developer Guide*.

  When the operation completes successfully, it returns the ID of the new custom
  key store. Before you can use your new custom key store, you need to use the
  `ConnectCustomKeyStore` operation to connect the new key store to its CloudHSM
  cluster. Even if you are not going to use your custom key store immediately, you
  might want to connect it to verify that all settings are correct and then
  disconnect it until you are ready to use it.

  For help with failures, see [Troubleshooting a Custom Key Store](https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html)
  in the *Key Management Service Developer Guide*.

  **Cross-account use**: No. You cannot perform this operation on a custom key
  store in a different Amazon Web Services account.

  **Required permissions**:
  [kms:CreateCustomKeyStore](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (IAM policy).

  ## Related operations:

    * `ConnectCustomKeyStore`

    * `DeleteCustomKeyStore`

    * `DescribeCustomKeyStores`

    * `DisconnectCustomKeyStore`

    * `UpdateCustomKeyStore`
  """
  def create_custom_key_store(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateCustomKeyStore", input, options)
  end

  @doc """
  Adds a grant to a KMS key.

  A *grant* is a policy instrument that allows Amazon Web Services principals to
  use KMS keys in cryptographic operations. It also can allow them to view a KMS
  key (`DescribeKey`) and create and manage grants. When authorizing access to a
  KMS key, grants are considered along with key policies and IAM policies. Grants
  are often used for temporary permissions because you can create one, use its
  permissions, and delete it without changing your key policies or IAM policies.

  For detailed information about grants, including grant terminology, see [Grants in KMS](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html) in
  the * *Key Management Service Developer Guide* *. For examples of working with
  grants in several programming languages, see [Programming grants](https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html).

  The `CreateGrant` operation returns a `GrantToken` and a `GrantId`.

    * When you create, retire, or revoke a grant, there might be a brief
  delay, usually less than five minutes, until the grant is available throughout
  KMS. This state is known as *eventual consistency*. Once the grant has achieved
  eventual consistency, the grantee principal can use the permissions in the grant
  without identifying the grant.

  However, to use the permissions in the grant immediately, use the `GrantToken`
  that `CreateGrant` returns. For details, see [Using a grant token](https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token)
  in the * *Key Management Service Developer Guide* *.

    * The `CreateGrant` operation also returns a `GrantId`. You can use
  the `GrantId` and a key identifier to identify the grant in the `RetireGrant`
  and `RevokeGrant` operations. To find the grant ID, use the `ListGrants` or
  `ListRetirableGrants` operations.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: Yes. To perform this operation on a KMS key in a
  different Amazon Web Services account, specify the key ARN in the value of the
  `KeyId` parameter.

  **Required permissions**:
  [kms:CreateGrant](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  ## Related operations:

    * `ListGrants`

    * `ListRetirableGrants`

    * `RetireGrant`

    * `RevokeGrant`
  """
  def create_grant(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateGrant", input, options)
  end

  @doc """
  Creates a unique customer managed [KMS key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#kms-keys)
  in your Amazon Web Services account and Region.

  In addition to the required parameters, you can use the optional parameters to
  specify a key policy, description, tags, and other useful elements for any key
  type.

  KMS is replacing the term *customer master key (CMK)* with *KMS key* and *KMS
  key*. The concept has not changed. To prevent breaking changes, KMS is keeping
  some variations of this term.

  To create different types of KMS keys, use the following guidance:

  ## Definitions

  ### Symmetric encryption KMS key

  To create a symmetric encryption KMS key, you aren't required to specify any
  parameters. The default value for `KeySpec`, `SYMMETRIC_DEFAULT`, and the
  default value for `KeyUsage`, `ENCRYPT_DECRYPT`, create a symmetric encryption
  KMS key.

  If you need a key for basic encryption and decryption or you are creating a KMS
  key to protect your resources in an Amazon Web Services service, create a
  symmetric encryption KMS key. The key material in a symmetric encryption key
  never leaves KMS unencrypted. You can use a symmetric encryption KMS key to
  encrypt and decrypt data up to 4,096 bytes, but they are typically used to
  generate data keys and data keys pairs. For details, see `GenerateDataKey` and
  `GenerateDataKeyPair`.

  ### Asymmetric KMS keys

  To create an asymmetric KMS key, use the `KeySpec` parameter to specify the type
  of key material in the KMS key. Then, use the `KeyUsage` parameter to determine
  whether the KMS key will be used to encrypt and decrypt or sign and verify. You
  can't change these properties after the KMS key is created.

  Asymmetric KMS keys contain an RSA key pair or an Elliptic Curve (ECC) key pair.
  The private key in an asymmetric KMS key never leaves KMS unencrypted. However,
  you can use the `GetPublicKey` operation to download the public key so it can be
  used outside of KMS. KMS keys with RSA key pairs can be used to encrypt or
  decrypt data or sign and verify messages (but not both). KMS keys with ECC key
  pairs can be used only to sign and verify messages. For information about
  asymmetric KMS keys, see [Asymmetric KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
  in the *Key Management Service Developer Guide*.

  ### HMAC KMS key

  To create an HMAC KMS key, set the `KeySpec` parameter to a key spec value for
  HMAC KMS keys. Then set the `KeyUsage` parameter to `GENERATE_VERIFY_MAC`. You
  must set the key usage even though `GENERATE_VERIFY_MAC` is the only valid key
  usage value for HMAC KMS keys. You can't change these properties after the KMS
  key is created.

  HMAC KMS keys are symmetric keys that never leave KMS unencrypted. You can use
  HMAC keys to generate (`GenerateMac`) and verify (`VerifyMac`) HMAC codes for
  messages up to 4096 bytes.

  HMAC KMS keys are not supported in all Amazon Web Services Regions. If you try
  to create an HMAC KMS key in an Amazon Web Services Region in which HMAC keys
  are not supported, the `CreateKey` operation returns an
  `UnsupportedOperationException`. For a list of Regions in which HMAC KMS keys
  are supported, see [HMAC keys in KMS](https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html) in the
  *Key Management Service Developer Guide*.

  ### Multi-Region primary keys

  ### Imported key material

  To create a multi-Region *primary key* in the local Amazon Web Services Region,
  use the `MultiRegion` parameter with a value of `True`. To create a multi-Region
  *replica key*, that is, a KMS key with the same key ID and key material as a
  primary key, but in a different Amazon Web Services Region, use the
  `ReplicateKey` operation. To change a replica key to a primary key, and its
  primary key to a replica key, use the `UpdatePrimaryRegion` operation.

  You can create multi-Region KMS keys for all supported KMS key types: symmetric
  encryption KMS keys, HMAC KMS keys, asymmetric encryption KMS keys, and
  asymmetric signing KMS keys. You can also create multi-Region keys with imported
  key material. However, you can't create multi-Region keys in a custom key store.

  This operation supports *multi-Region keys*, an KMS feature that lets you create
  multiple interoperable KMS keys in different Amazon Web Services Regions.
  Because these KMS keys have the same key ID, key material, and other metadata,
  you can use them interchangeably to encrypt data in one Amazon Web Services
  Region and decrypt it in a different Amazon Web Services Region without
  re-encrypting the data or making a cross-Region call. For more information about
  multi-Region keys, see [Multi-Region keys in KMS](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html)
  in the *Key Management Service Developer Guide*.

  To import your own key material, begin by creating a symmetric encryption KMS
  key with no key material. To do this, use the `Origin` parameter of `CreateKey`
  with a value of `EXTERNAL`. Next, use `GetParametersForImport` operation to get
  a public key and import token, and use the public key to encrypt your key
  material. Then, use `ImportKeyMaterial` with your import token to import the key
  material. For step-by-step instructions, see [Importing Key Material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
  in the * *Key Management Service Developer Guide* *.

  This feature supports only symmetric encryption KMS keys, including multi-Region
  symmetric encryption KMS keys. You cannot import key material into any other
  type of KMS key.

  To create a multi-Region primary key with imported key material, use the
  `Origin` parameter of `CreateKey` with a value of `EXTERNAL` and the
  `MultiRegion` parameter with a value of `True`. To create replicas of the
  multi-Region primary key, use the `ReplicateKey` operation. For more information
  about multi-Region keys, see [Multi-Region keys in KMS](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html)
  in the *Key Management Service Developer Guide*.

  ### Custom key store

  To create a symmetric encryption KMS key in a [custom key store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html),
  use the `CustomKeyStoreId` parameter to specify the custom key store. You must
  also use the `Origin` parameter with a value of `AWS_CLOUDHSM`. The CloudHSM
  cluster that is associated with the custom key store must have at least two
  active HSMs in different Availability Zones in the Amazon Web Services Region.

  Custom key stores support only symmetric encryption KMS keys. You cannot create
  an HMAC KMS key or an asymmetric KMS key in a custom key store. For information
  about custom key stores in KMS see [Custom key stores in KMS](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  in the * *Key Management Service Developer Guide* *.

  **Cross-account use**: No. You cannot use this operation to create a KMS key in
  a different Amazon Web Services account.

  **Required permissions**:
  [kms:CreateKey](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html) (IAM policy). To use the `Tags` parameter,
  [kms:TagResource](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (IAM policy). For examples and information about related permissions, see [Allow a user to create KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/iam-policies.html#iam-policy-example-create-key)
  in the *Key Management Service Developer Guide*.

  ## Related operations:

    * `DescribeKey`

    * `ListKeys`

    * `ScheduleKeyDeletion`
  """
  def create_key(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateKey", input, options)
  end

  @doc """
  Decrypts ciphertext that was encrypted by a KMS key using any of the following
  operations:

    * `Encrypt`

    * `GenerateDataKey`

    * `GenerateDataKeyPair`

    * `GenerateDataKeyWithoutPlaintext`

    * `GenerateDataKeyPairWithoutPlaintext`

  You can use this operation to decrypt ciphertext that was encrypted under a
  symmetric encryption KMS key or an asymmetric encryption KMS key.

  When the KMS key is asymmetric, you must specify the KMS key and the encryption
  algorithm that was used to encrypt the ciphertext. For information about
  asymmetric KMS keys, see [Asymmetric KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
  in the *Key Management Service Developer Guide*.

  The `Decrypt` operation also decrypts ciphertext that was encrypted outside of
  KMS by the public key in an KMS asymmetric KMS key. However, it cannot decrypt
  ciphertext produced by other libraries, such as the [Amazon Web Services Encryption
  SDK](https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/) or
  [Amazon S3 client-side encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html).
  These libraries return a ciphertext format that is incompatible with KMS.

  If the ciphertext was encrypted under a symmetric encryption KMS key, the
  `KeyId` parameter is optional. KMS can get this information from metadata that
  it adds to the symmetric ciphertext blob. This feature adds durability to your
  implementation by ensuring that authorized users can decrypt ciphertext decades
  after it was encrypted, even if they've lost track of the key ID. However,
  specifying the KMS key is always recommended as a best practice. When you use
  the `KeyId` parameter to specify a KMS key, KMS only uses the KMS key you
  specify. If the ciphertext was encrypted under a different KMS key, the
  `Decrypt` operation fails. This practice ensures that you use the KMS key that
  you intend.

  Whenever possible, use key policies to give users permission to call the
  `Decrypt` operation on a particular KMS key, instead of using IAM policies.
  Otherwise, you might create an IAM user policy that gives the user `Decrypt`
  permission on all KMS keys. This user could decrypt ciphertext that was
  encrypted by KMS keys in other accounts if the key policy for the cross-account
  KMS key permits it. If you must use an IAM policy for `Decrypt` permissions,
  limit the user to particular KMS keys or particular trusted accounts. For
  details, see [Best practices for IAM policies](https://docs.aws.amazon.com/kms/latest/developerguide/iam-policies.html#iam-policies-best-practices)
  in the *Key Management Service Developer Guide*.

  Applications in Amazon Web Services Nitro Enclaves can call this operation by
  using the [Amazon Web Services Nitro Enclaves Development Kit](https://github.com/aws/aws-nitro-enclaves-sdk-c). For information about the
  supporting parameters, see [How Amazon Web Services Nitro Enclaves use KMS](https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html)
  in the *Key Management Service Developer Guide*.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: Yes. To perform this operation with a KMS key in a
  different Amazon Web Services account, specify the key ARN or alias ARN in the
  value of the `KeyId` parameter.

  **Required permissions**:
  [kms:Decrypt](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  ## Related operations:

    * `Encrypt`

    * `GenerateDataKey`

    * `GenerateDataKeyPair`

    * `ReEncrypt`
  """
  def decrypt(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "Decrypt", input, options)
  end

  @doc """
  Deletes the specified alias.

  Adding, deleting, or updating an alias can allow or deny permission to the KMS
  key. For details, see [ABAC in KMS](https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in the
  *Key Management Service Developer Guide*.

  Because an alias is not a property of a KMS key, you can delete and change the
  aliases of a KMS key without affecting the KMS key. Also, aliases do not appear
  in the response from the `DescribeKey` operation. To get the aliases of all KMS
  keys, use the `ListAliases` operation.

  Each KMS key can have multiple aliases. To change the alias of a KMS key, use
  `DeleteAlias` to delete the current alias and `CreateAlias` to create a new
  alias. To associate an existing alias with a different KMS key, call
  `UpdateAlias`.

  **Cross-account use**: No. You cannot perform this operation on an alias in a
  different Amazon Web Services account.

  ## Required permissions

    *
  [kms:DeleteAlias](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html) on the alias (IAM policy).

    *
  [kms:DeleteAlias](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  on the KMS key (key policy).

  For details, see [Controlling access to aliases](https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access)
  in the *Key Management Service Developer Guide*.

  ## Related operations:

    * `CreateAlias`

    * `ListAliases`

    * `UpdateAlias`
  """
  def delete_alias(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAlias", input, options)
  end

  @doc """
  Deletes a [custom key store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).

  This operation does not delete the CloudHSM cluster that is associated with the
  custom key store, or affect any users or keys in the cluster.

  The custom key store that you delete cannot contain any KMS [KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#kms_keys).
  Before deleting the key store, verify that you will never need to use any of the
  KMS keys in the key store for any [cryptographic operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations).
  Then, use `ScheduleKeyDeletion` to delete the KMS keys from the key store. When
  the scheduled waiting period expires, the `ScheduleKeyDeletion` operation
  deletes the KMS keys. Then it makes a best effort to delete the key material
  from the associated cluster. However, you might need to manually [delete the orphaned key
  material](https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key)
  from the cluster and its backups.

  After all KMS keys are deleted from KMS, use `DisconnectCustomKeyStore` to
  disconnect the key store from KMS. Then, you can delete the custom key store.

  Instead of deleting the custom key store, consider using
  `DisconnectCustomKeyStore` to disconnect it from KMS. While the key store is
  disconnected, you cannot create or use the KMS keys in the key store. But, you
  do not need to delete KMS keys and you can reconnect a disconnected custom key
  store at any time.

  If the operation succeeds, it returns a JSON object with no properties.

  This operation is part of the [Custom Key Store feature](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  feature in KMS, which combines the convenience and extensive integration of KMS
  with the isolation and control of a single-tenant key store.

  **Cross-account use**: No. You cannot perform this operation on a custom key
  store in a different Amazon Web Services account.

  **Required permissions**:
  [kms:DeleteCustomKeyStore](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (IAM policy)

  ## Related operations:

    * `ConnectCustomKeyStore`

    * `CreateCustomKeyStore`

    * `DescribeCustomKeyStores`

    * `DisconnectCustomKeyStore`

    * `UpdateCustomKeyStore`
  """
  def delete_custom_key_store(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteCustomKeyStore", input, options)
  end

  @doc """
  Deletes key material that you previously imported.

  This operation makes the specified KMS key unusable. For more information about
  importing key material into KMS, see [Importing Key Material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
  in the *Key Management Service Developer Guide*.

  When the specified KMS key is in the `PendingDeletion` state, this operation
  does not change the KMS key's state. Otherwise, it changes the KMS key's state
  to `PendingImport`.

  After you delete key material, you can use `ImportKeyMaterial` to reimport the
  same key material into the KMS key.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: No. You cannot perform this operation on a KMS key in a
  different Amazon Web Services account.

  **Required permissions**:
  [kms:DeleteImportedKeyMaterial](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  ## Related operations:

    * `GetParametersForImport`

    * `ImportKeyMaterial`
  """
  def delete_imported_key_material(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteImportedKeyMaterial", input, options)
  end

  @doc """
  Gets information about [custom key stores](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  in the account and Region.

  This operation is part of the [Custom Key Store feature](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  feature in KMS, which combines the convenience and extensive integration of KMS
  with the isolation and control of a single-tenant key store.

  By default, this operation returns information about all custom key stores in
  the account and Region. To get only information about a particular custom key
  store, use either the `CustomKeyStoreName` or `CustomKeyStoreId` parameter (but
  not both).

  To determine whether the custom key store is connected to its CloudHSM cluster,
  use the `ConnectionState` element in the response. If an attempt to connect the
  custom key store failed, the `ConnectionState` value is `FAILED` and the
  `ConnectionErrorCode` element in the response indicates the cause of the
  failure. For help interpreting the `ConnectionErrorCode`, see
  `CustomKeyStoresListEntry`.

  Custom key stores have a `DISCONNECTED` connection state if the key store has
  never been connected or you use the `DisconnectCustomKeyStore` operation to
  disconnect it. If your custom key store state is `CONNECTED` but you are having
  trouble using it, make sure that its associated CloudHSM cluster is active and
  contains the minimum number of HSMs required for the operation, if any.

  For help repairing your custom key store, see the [Troubleshooting Custom Key Stores](https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html)
  topic in the *Key Management Service Developer Guide*.

  **Cross-account use**: No. You cannot perform this operation on a custom key
  store in a different Amazon Web Services account.

  **Required permissions**:
  [kms:DescribeCustomKeyStores](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (IAM policy)

  ## Related operations:

    * `ConnectCustomKeyStore`

    * `CreateCustomKeyStore`

    * `DeleteCustomKeyStore`

    * `DisconnectCustomKeyStore`

    * `UpdateCustomKeyStore`
  """
  def describe_custom_key_stores(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeCustomKeyStores", input, options)
  end

  @doc """
  Provides detailed information about a KMS key.

  You can run `DescribeKey` on a [customer managed key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk)
  or an [Amazon Web Services managed key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk).

  This detailed information includes the key ARN, creation date (and deletion
  date, if applicable), the key state, and the origin and expiration date (if any)
  of the key material. It includes fields, like `KeySpec`, that help you
  distinguish different types of KMS keys. It also displays the key usage
  (encryption, signing, or generating and verifying MACs) and the algorithms that
  the KMS key supports. For KMS keys in custom key stores, it includes information
  about the custom key store, such as the key store ID and the CloudHSM cluster
  ID. For multi-Region keys, it displays the primary key and all related replica
  keys.

  `DescribeKey` does not return the following information:

    * Aliases associated with the KMS key. To get this information, use
  `ListAliases`.

    * Whether automatic key rotation is enabled on the KMS key. To get
  this information, use `GetKeyRotationStatus`. Also, some key states prevent a
  KMS key from being automatically rotated. For details, see [How Automatic Key Rotation
  Works](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotate-keys-how-it-works)
  in *Key Management Service Developer Guide*.

    * Tags on the KMS key. To get this information, use
  `ListResourceTags`.

    * Key policies and grants on the KMS key. To get this information,
  use `GetKeyPolicy` and `ListGrants`.

  In general, `DescribeKey` is a non-mutating operation. It returns data about KMS
  keys, but doesn't change them. However, Amazon Web Services services use
  `DescribeKey` to create [Amazon Web Services managed keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk)
  from a *predefined Amazon Web Services alias* with no key ID.

  **Cross-account use**: Yes. To perform this operation with a KMS key in a
  different Amazon Web Services account, specify the key ARN or alias ARN in the
  value of the `KeyId` parameter.

  **Required permissions**:
  [kms:DescribeKey](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  ## Related operations:

    * `GetKeyPolicy`

    * `GetKeyRotationStatus`

    * `ListAliases`

    * `ListGrants`

    * `ListKeys`

    * `ListResourceTags`

    * `ListRetirableGrants`
  """
  def describe_key(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeKey", input, options)
  end

  @doc """
  Sets the state of a KMS key to disabled.

  This change temporarily prevents use of the KMS key for [cryptographic operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations).

  For more information about how key state affects the use of a KMS key, see [Key states of KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the * *Key Management Service Developer Guide* *.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: No. You cannot perform this operation on a KMS key in a
  different Amazon Web Services account.

  **Required permissions**:
  [kms:DisableKey](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  **Related operations**: `EnableKey`
  """
  def disable_key(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisableKey", input, options)
  end

  @doc """
  Disables [automatic rotation of the key material](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html)
  of the specified symmetric encryption KMS key.

  Automatic key rotation is supported only on symmetric encryption KMS keys. You
  cannot enable or disable automatic rotation of [asymmetric KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html),
  [HMAC KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html), KMS keys
  with [imported key material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html),
  or KMS keys in a [custom key store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).
  The key rotation status of these KMS keys is always `false`. To enable or
  disable automatic rotation of a set of related [multi-Region keys](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-manage.html#multi-region-rotate),
  set the property on the primary key.

  You can enable (`EnableKeyRotation`) and disable automatic rotation of the key
  material in [customer managed KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk).
  Key material rotation of [Amazon Web Services managed KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk)
  is not configurable. KMS always rotates the key material for every year.
  Rotation of [Amazon Web Services owned KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk)
  varies.

  In May 2022, KMS changed the rotation schedule for Amazon Web Services managed
  keys from every three years to every year. For details, see `EnableKeyRotation`.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: No. You cannot perform this operation on a KMS key in a
  different Amazon Web Services account.

  **Required permissions**:
  [kms:DisableKeyRotation](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  ## Related operations:

    * `EnableKeyRotation`

    * `GetKeyRotationStatus`
  """
  def disable_key_rotation(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisableKeyRotation", input, options)
  end

  @doc """
  Disconnects the [custom key store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  from its associated CloudHSM cluster.

  While a custom key store is disconnected, you can manage the custom key store
  and its KMS keys, but you cannot create or use KMS keys in the custom key store.
  You can reconnect the custom key store at any time.

  While a custom key store is disconnected, all attempts to create KMS keys in the
  custom key store or to use existing KMS keys in [cryptographic operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations)
  will fail. This action can prevent users from storing and accessing sensitive
  data.

  To find the connection state of a custom key store, use the
  `DescribeCustomKeyStores` operation. To reconnect a custom key store, use the
  `ConnectCustomKeyStore` operation.

  If the operation succeeds, it returns a JSON object with no properties.

  This operation is part of the [Custom Key Store feature](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  feature in KMS, which combines the convenience and extensive integration of KMS
  with the isolation and control of a single-tenant key store.

  **Cross-account use**: No. You cannot perform this operation on a custom key
  store in a different Amazon Web Services account.

  **Required permissions**:
  [kms:DisconnectCustomKeyStore](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (IAM policy)

  ## Related operations:

    * `ConnectCustomKeyStore`

    * `CreateCustomKeyStore`

    * `DeleteCustomKeyStore`

    * `DescribeCustomKeyStores`

    * `UpdateCustomKeyStore`
  """
  def disconnect_custom_key_store(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisconnectCustomKeyStore", input, options)
  end

  @doc """
  Sets the key state of a KMS key to enabled.

  This allows you to use the KMS key for [cryptographic operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations).

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: No. You cannot perform this operation on a KMS key in a
  different Amazon Web Services account.

  **Required permissions**:
  [kms:EnableKey](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  **Related operations**: `DisableKey`
  """
  def enable_key(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "EnableKey", input, options)
  end

  @doc """
  Enables [automatic rotation of the key material](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html)
  of the specified symmetric encryption KMS key.

  When you enable automatic rotation of a[customer managed KMS key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk),
  KMS rotates the key material of the KMS key one year (approximately 365 days)
  from the enable date and every year thereafter. You can monitor rotation of the
  key material for your KMS keys in CloudTrail and Amazon CloudWatch. To disable
  rotation of the key material in a customer managed KMS key, use the
  `DisableKeyRotation` operation.

  Automatic key rotation is supported only on [symmetric encryption KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#symmetric-cmks).
  You cannot enable or disable automatic rotation of [asymmetric KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html),
  [HMAC KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html), KMS keys
  with [imported key material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html),
  or KMS keys in a [custom key store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).
  The key rotation status of these KMS keys is always `false`. To enable or
  disable automatic rotation of a set of related [multi-Region keys](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-manage.html#multi-region-rotate),
  set the property on the primary key.

  You cannot enable or disable automatic rotation [Amazon Web Services managed KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk).
  KMS always rotates the key material of Amazon Web Services managed keys every
  year. Rotation of [Amazon Web Services owned KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk)
  varies.

  In May 2022, KMS changed the rotation schedule for Amazon Web Services managed
  keys from every three years (approximately 1,095 days) to every year
  (approximately 365 days).

  New Amazon Web Services managed keys are automatically rotated one year after
  they are created, and approximately every year thereafter.

  Existing Amazon Web Services managed keys are automatically rotated one year
  after their most recent rotation, and every year thereafter.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: No. You cannot perform this operation on a KMS key in a
  different Amazon Web Services account.

  **Required permissions**:
  [kms:EnableKeyRotation](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  ## Related operations:

    * `DisableKeyRotation`

    * `GetKeyRotationStatus`
  """
  def enable_key_rotation(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "EnableKeyRotation", input, options)
  end

  @doc """
  Encrypts plaintext of up to 4,096 bytes using a KMS key.

  You can use a symmetric or asymmetric KMS key with a `KeyUsage` of
  `ENCRYPT_DECRYPT`.

  You can use this operation to encrypt small amounts of arbitrary data, such as a
  personal identifier or database password, or other sensitive information. You
  don't need to use the `Encrypt` operation to encrypt a data key. The
  `GenerateDataKey` and `GenerateDataKeyPair` operations return a plaintext data
  key and an encrypted copy of that data key.

  If you use a symmetric encryption KMS key, you can use an encryption context to
  add additional security to your encryption operation. If you specify an
  `EncryptionContext` when encrypting data, you must specify the same encryption
  context (a case-sensitive exact match) when decrypting the data. Otherwise, the
  request to decrypt fails with an `InvalidCiphertextException`. For more
  information, see [Encryption Context](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
  in the *Key Management Service Developer Guide*.

  If you specify an asymmetric KMS key, you must also specify the encryption
  algorithm. The algorithm must be compatible with the KMS key type.

  When you use an asymmetric KMS key to encrypt or reencrypt data, be sure to
  record the KMS key and encryption algorithm that you choose. You will be
  required to provide the same KMS key and encryption algorithm when you decrypt
  the data. If the KMS key and algorithm do not match the values used to encrypt
  the data, the decrypt operation fails.

  You are not required to supply the key ID and encryption algorithm when you
  decrypt with symmetric encryption KMS keys because KMS stores this information
  in the ciphertext blob. KMS cannot store metadata in ciphertext generated with
  asymmetric keys. The standard format for asymmetric key ciphertext does not
  include configurable fields.

  The maximum size of the data that you can encrypt varies with the type of KMS
  key and the encryption algorithm that you choose.

    * Symmetric encryption KMS keys

      * `SYMMETRIC_DEFAULT`: 4096 bytes

    * `RSA_2048`

      * `RSAES_OAEP_SHA_1`: 214 bytes

      * `RSAES_OAEP_SHA_256`: 190 bytes

    * `RSA_3072`

      * `RSAES_OAEP_SHA_1`: 342 bytes

      * `RSAES_OAEP_SHA_256`: 318 bytes

    * `RSA_4096`

      * `RSAES_OAEP_SHA_1`: 470 bytes

      * `RSAES_OAEP_SHA_256`: 446 bytes

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: Yes. To perform this operation with a KMS key in a
  different Amazon Web Services account, specify the key ARN or alias ARN in the
  value of the `KeyId` parameter.

  **Required permissions**:
  [kms:Encrypt](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  ## Related operations:

    * `Decrypt`

    * `GenerateDataKey`

    * `GenerateDataKeyPair`
  """
  def encrypt(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "Encrypt", input, options)
  end

  @doc """
  Returns a unique symmetric data key for use outside of KMS.

  This operation returns a plaintext copy of the data key and a copy that is
  encrypted under a symmetric encryption KMS key that you specify. The bytes in
  the plaintext key are random; they are not related to the caller or the KMS key.
  You can use the plaintext key to encrypt your data outside of KMS and store the
  encrypted data key with the encrypted data.

  To generate a data key, specify the symmetric encryption KMS key that will be
  used to encrypt the data key. You cannot use an asymmetric KMS key to encrypt
  data keys. To get the type of your KMS key, use the `DescribeKey` operation. You
  must also specify the length of the data key. Use either the `KeySpec` or
  `NumberOfBytes` parameters (but not both). For 128-bit and 256-bit data keys,
  use the `KeySpec` parameter.

  To get only an encrypted copy of the data key, use
  `GenerateDataKeyWithoutPlaintext`. To generate an asymmetric data key pair, use
  the `GenerateDataKeyPair` or `GenerateDataKeyPairWithoutPlaintext` operation. To
  get a cryptographically secure random byte string, use `GenerateRandom`.

  You can use an optional encryption context to add additional security to the
  encryption operation. If you specify an `EncryptionContext`, you must specify
  the same encryption context (a case-sensitive exact match) when decrypting the
  encrypted data key. Otherwise, the request to decrypt fails with an
  `InvalidCiphertextException`. For more information, see [Encryption Context](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
  in the *Key Management Service Developer Guide*.

  Applications in Amazon Web Services Nitro Enclaves can call this operation by
  using the [Amazon Web Services Nitro Enclaves Development Kit](https://github.com/aws/aws-nitro-enclaves-sdk-c). For information about the
  supporting parameters, see [How Amazon Web Services Nitro Enclaves use KMS](https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html)
  in the *Key Management Service Developer Guide*.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  ## How to use your data key

  We recommend that you use the following pattern to encrypt data locally in your
  application. You can write your own code or use a client-side encryption
  library, such as the [Amazon Web Services Encryption SDK](https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/), the
  [Amazon DynamoDB Encryption Client](https://docs.aws.amazon.com/dynamodb-encryption-client/latest/devguide/),
  or [Amazon S3 client-side encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html)
  to do these tasks for you.

  To encrypt data outside of KMS:

    1. Use the `GenerateDataKey` operation to get a data key.

    2. Use the plaintext data key (in the `Plaintext` field of the
  response) to encrypt your data outside of KMS. Then erase the plaintext data key
  from memory.

    3. Store the encrypted data key (in the `CiphertextBlob` field of
  the response) with the encrypted data.

  To decrypt data outside of KMS:

    1. Use the `Decrypt` operation to decrypt the encrypted data key.
  The operation returns a plaintext copy of the data key.

    2. Use the plaintext data key to decrypt data outside of KMS, then
  erase the plaintext data key from memory.

  **Cross-account use**: Yes. To perform this operation with a KMS key in a
  different Amazon Web Services account, specify the key ARN or alias ARN in the
  value of the `KeyId` parameter.

  **Required permissions**:
  [kms:GenerateDataKey](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  ## Related operations:

    * `Decrypt`

    * `Encrypt`

    * `GenerateDataKeyPair`

    * `GenerateDataKeyPairWithoutPlaintext`

    * `GenerateDataKeyWithoutPlaintext`
  """
  def generate_data_key(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GenerateDataKey", input, options)
  end

  @doc """
  Returns a unique asymmetric data key pair for use outside of KMS.

  This operation returns a plaintext public key, a plaintext private key, and a
  copy of the private key that is encrypted under the symmetric encryption KMS key
  you specify. You can use the data key pair to perform asymmetric cryptography
  and implement digital signatures outside of KMS. The bytes in the keys are
  random; they not related to the caller or to the KMS key that is used to encrypt
  the private key.

  You can use the public key that `GenerateDataKeyPair` returns to encrypt data or
  verify a signature outside of KMS. Then, store the encrypted private key with
  the data. When you are ready to decrypt data or sign a message, you can use the
  `Decrypt` operation to decrypt the encrypted private key.

  To generate a data key pair, you must specify a symmetric encryption KMS key to
  encrypt the private key in a data key pair. You cannot use an asymmetric KMS key
  or a KMS key in a custom key store. To get the type and origin of your KMS key,
  use the `DescribeKey` operation.

  Use the `KeyPairSpec` parameter to choose an RSA or Elliptic Curve (ECC) data
  key pair. KMS recommends that your use ECC key pairs for signing, and use RSA
  key pairs for either encryption or signing, but not both. However, KMS cannot
  enforce any restrictions on the use of data key pairs outside of KMS.

  If you are using the data key pair to encrypt data, or for any operation where
  you don't immediately need a private key, consider using the
  `GenerateDataKeyPairWithoutPlaintext` operation.
  `GenerateDataKeyPairWithoutPlaintext` returns a plaintext public key and an
  encrypted private key, but omits the plaintext private key that you need only to
  decrypt ciphertext or sign a message. Later, when you need to decrypt the data
  or sign a message, use the `Decrypt` operation to decrypt the encrypted private
  key in the data key pair.

  `GenerateDataKeyPair` returns a unique data key pair for each request. The bytes
  in the keys are random; they are not related to the caller or the KMS key that
  is used to encrypt the private key. The public key is a DER-encoded X.509
  SubjectPublicKeyInfo, as specified in [RFC 5280](https://tools.ietf.org/html/rfc5280). The private key is a DER-encoded
  PKCS8 PrivateKeyInfo, as specified in [RFC 5958](https://tools.ietf.org/html/rfc5958).

  You can use an optional encryption context to add additional security to the
  encryption operation. If you specify an `EncryptionContext`, you must specify
  the same encryption context (a case-sensitive exact match) when decrypting the
  encrypted data key. Otherwise, the request to decrypt fails with an
  `InvalidCiphertextException`. For more information, see [Encryption Context](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
  in the *Key Management Service Developer Guide*.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: Yes. To perform this operation with a KMS key in a
  different Amazon Web Services account, specify the key ARN or alias ARN in the
  value of the `KeyId` parameter.

  **Required permissions**:
  [kms:GenerateDataKeyPair](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  ## Related operations:

    * `Decrypt`

    * `Encrypt`

    * `GenerateDataKey`

    * `GenerateDataKeyPairWithoutPlaintext`

    * `GenerateDataKeyWithoutPlaintext`
  """
  def generate_data_key_pair(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GenerateDataKeyPair", input, options)
  end

  @doc """
  Returns a unique asymmetric data key pair for use outside of KMS.

  This operation returns a plaintext public key and a copy of the private key that
  is encrypted under the symmetric encryption KMS key you specify. Unlike
  `GenerateDataKeyPair`, this operation does not return a plaintext private key.
  The bytes in the keys are random; they are not related to the caller or to the
  KMS key that is used to encrypt the private key.

  You can use the public key that `GenerateDataKeyPairWithoutPlaintext` returns to
  encrypt data or verify a signature outside of KMS. Then, store the encrypted
  private key with the data. When you are ready to decrypt data or sign a message,
  you can use the `Decrypt` operation to decrypt the encrypted private key.

  To generate a data key pair, you must specify a symmetric encryption KMS key to
  encrypt the private key in a data key pair. You cannot use an asymmetric KMS key
  or a KMS key in a custom key store. To get the type and origin of your KMS key,
  use the `DescribeKey` operation.

  Use the `KeyPairSpec` parameter to choose an RSA or Elliptic Curve (ECC) data
  key pair. KMS recommends that your use ECC key pairs for signing, and use RSA
  key pairs for either encryption or signing, but not both. However, KMS cannot
  enforce any restrictions on the use of data key pairs outside of KMS.

  `GenerateDataKeyPairWithoutPlaintext` returns a unique data key pair for each
  request. The bytes in the key are not related to the caller or KMS key that is
  used to encrypt the private key. The public key is a DER-encoded X.509
  SubjectPublicKeyInfo, as specified in [RFC 5280](https://tools.ietf.org/html/rfc5280).

  You can use an optional encryption context to add additional security to the
  encryption operation. If you specify an `EncryptionContext`, you must specify
  the same encryption context (a case-sensitive exact match) when decrypting the
  encrypted data key. Otherwise, the request to decrypt fails with an
  `InvalidCiphertextException`. For more information, see [Encryption Context](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
  in the *Key Management Service Developer Guide*.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: Yes. To perform this operation with a KMS key in a
  different Amazon Web Services account, specify the key ARN or alias ARN in the
  value of the `KeyId` parameter.

  **Required permissions**:
  [kms:GenerateDataKeyPairWithoutPlaintext](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  ## Related operations:

    * `Decrypt`

    * `Encrypt`

    * `GenerateDataKey`

    * `GenerateDataKeyPair`

    * `GenerateDataKeyWithoutPlaintext`
  """
  def generate_data_key_pair_without_plaintext(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "GenerateDataKeyPairWithoutPlaintext",
      input,
      options
    )
  end

  @doc """
  Returns a unique symmetric data key for use outside of KMS.

  This operation returns a data key that is encrypted under a symmetric encryption
  KMS key that you specify. The bytes in the key are random; they are not related
  to the caller or to the KMS key.

  `GenerateDataKeyWithoutPlaintext` is identical to the `GenerateDataKey`
  operation except that it does not return a plaintext copy of the data key.

  This operation is useful for systems that need to encrypt data at some point,
  but not immediately. When you need to encrypt the data, you call the `Decrypt`
  operation on the encrypted copy of the key.

  It's also useful in distributed systems with different levels of trust. For
  example, you might store encrypted data in containers. One component of your
  system creates new containers and stores an encrypted data key with each
  container. Then, a different component puts the data into the containers. That
  component first decrypts the data key, uses the plaintext data key to encrypt
  data, puts the encrypted data into the container, and then destroys the
  plaintext data key. In this system, the component that creates the containers
  never sees the plaintext data key.

  To request an asymmetric data key pair, use the `GenerateDataKeyPair` or
  `GenerateDataKeyPairWithoutPlaintext` operations.

  To generate a data key, you must specify the symmetric encryption KMS key that
  is used to encrypt the data key. You cannot use an asymmetric KMS key or a key
  in a custom key store to generate a data key. To get the type of your KMS key,
  use the `DescribeKey` operation.

  If the operation succeeds, you will find the encrypted copy of the data key in
  the `CiphertextBlob` field.

  You can use an optional encryption context to add additional security to the
  encryption operation. If you specify an `EncryptionContext`, you must specify
  the same encryption context (a case-sensitive exact match) when decrypting the
  encrypted data key. Otherwise, the request to decrypt fails with an
  `InvalidCiphertextException`. For more information, see [Encryption Context](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
  in the *Key Management Service Developer Guide*.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: Yes. To perform this operation with a KMS key in a
  different Amazon Web Services account, specify the key ARN or alias ARN in the
  value of the `KeyId` parameter.

  **Required permissions**:
  [kms:GenerateDataKeyWithoutPlaintext](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  ## Related operations:

    * `Decrypt`

    * `Encrypt`

    * `GenerateDataKey`

    * `GenerateDataKeyPair`

    * `GenerateDataKeyPairWithoutPlaintext`
  """
  def generate_data_key_without_plaintext(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GenerateDataKeyWithoutPlaintext", input, options)
  end

  @doc """
  Generates a hash-based message authentication code (HMAC) for a message using an
  HMAC KMS key and a MAC algorithm that the key supports.

  The MAC algorithm computes the HMAC for the message and the key as described in
  [RFC 2104](https://datatracker.ietf.org/doc/html/rfc2104).  You can use the HMAC that this operation generates with the `VerifyMac`
  operation to demonstrate that the original message has not changed. Also,
  because a secret key is used to create the hash, you can verify that the party
  that generated the hash has the required secret key. This operation is part of
  KMS support for HMAC KMS keys. For details, see [HMAC keys in
  KMS](https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html) in the *
  *Key Management Service Developer Guide* *.

  Best practices recommend that you limit the time during which any signing
  mechanism, including an HMAC, is effective. This deters an attack where the
  actor uses a signed message to establish validity repeatedly or long after the
  message is superseded. HMAC tags do not include a timestamp, but you can include
  a timestamp in the token or message to help you detect when its time to refresh
  the HMAC.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: Yes. To perform this operation with a KMS key in a
  different Amazon Web Services account, specify the key ARN or alias ARN in the
  value of the `KeyId` parameter.

  **Required permissions**:
  [kms:GenerateMac](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  **Related operations**: `VerifyMac`
  """
  def generate_mac(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GenerateMac", input, options)
  end

  @doc """
  Returns a random byte string that is cryptographically secure.

  By default, the random byte string is generated in KMS. To generate the byte
  string in the CloudHSM cluster that is associated with a [custom key store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html),
  specify the custom key store ID.

  Applications in Amazon Web Services Nitro Enclaves can call this operation by
  using the [Amazon Web Services Nitro Enclaves Development Kit](https://github.com/aws/aws-nitro-enclaves-sdk-c). For information about the
  supporting parameters, see [How Amazon Web Services Nitro Enclaves use KMS](https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html)
  in the *Key Management Service Developer Guide*.

  For more information about entropy and random number generation, see [Key Management Service Cryptographic
  Details](https://docs.aws.amazon.com/kms/latest/cryptographic-details/).

  **Required permissions**:
  [kms:GenerateRandom](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (IAM policy)
  """
  def generate_random(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GenerateRandom", input, options)
  end

  @doc """
  Gets a key policy attached to the specified KMS key.

  **Cross-account use**: No. You cannot perform this operation on a KMS key in a
  different Amazon Web Services account.

  **Required permissions**:
  [kms:GetKeyPolicy](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  **Related operations**: `PutKeyPolicy`
  """
  def get_key_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetKeyPolicy", input, options)
  end

  @doc """
  Gets a Boolean value that indicates whether [automatic rotation of the key material](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html)
  is enabled for the specified KMS key.

  When you enable automatic rotation for [customer managed KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk),
  KMS rotates the key material of the KMS key one year (approximately 365 days)
  from the enable date and every year thereafter. You can monitor rotation of the
  key material for your KMS keys in CloudTrail and Amazon CloudWatch.

  Automatic key rotation is supported only on [symmetric encryption KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#symmetric-cmks).
  You cannot enable or disable automatic rotation of [asymmetric KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html),
  [HMAC KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html), KMS keys
  with [imported key material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html),
  or KMS keys in a [custom key store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).
  The key rotation status of these KMS keys is always `false`. To enable or
  disable automatic rotation of a set of related [multi-Region keys](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-manage.html#multi-region-rotate),
  set the property on the primary key..

  You can enable (`EnableKeyRotation`) and disable automatic rotation
  (`DisableKeyRotation`) of the key material in customer managed KMS keys. Key
  material rotation of [Amazon Web Services managed KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk)
  is not configurable. KMS always rotates the key material in Amazon Web Services
  managed KMS keys every year. The key rotation status for Amazon Web Services
  managed KMS keys is always `true`.

  In May 2022, KMS changed the rotation schedule for Amazon Web Services managed
  keys from every three years to every year. For details, see `EnableKeyRotation`.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

    * Disabled: The key rotation status does not change when you disable
  a KMS key. However, while the KMS key is disabled, KMS does not rotate the key
  material. When you re-enable the KMS key, rotation resumes. If the key material
  in the re-enabled KMS key hasn't been rotated in one year, KMS rotates it
  immediately, and every year thereafter. If it's been less than a year since the
  key material in the re-enabled KMS key was rotated, the KMS key resumes its
  prior rotation schedule.

    * Pending deletion: While a KMS key is pending deletion, its key
  rotation status is `false` and KMS does not rotate the key material. If you
  cancel the deletion, the original key rotation status returns to `true`.

  **Cross-account use**: Yes. To perform this operation on a KMS key in a
  different Amazon Web Services account, specify the key ARN in the value of the
  `KeyId` parameter.

  **Required permissions**:
  [kms:GetKeyRotationStatus](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  ## Related operations:

    * `DisableKeyRotation`

    * `EnableKeyRotation`
  """
  def get_key_rotation_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetKeyRotationStatus", input, options)
  end

  @doc """
  Returns the items you need to import key material into a symmetric encryption
  KMS key.

  For more information about importing key material into KMS, see [Importing key material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
  in the *Key Management Service Developer Guide*.

  This operation returns a public key and an import token. Use the public key to
  encrypt the symmetric key material. Store the import token to send with a
  subsequent `ImportKeyMaterial` request.

  You must specify the key ID of the symmetric encryption KMS key into which you
  will import key material. This KMS key's `Origin` must be `EXTERNAL`. You must
  also specify the wrapping algorithm and type of wrapping key (public key) that
  you will use to encrypt the key material. You cannot perform this operation on
  an asymmetric KMS key, an HMAC KMS key, or on any KMS key in a different Amazon
  Web Services account.

  To import key material, you must use the public key and import token from the
  same response. These items are valid for 24 hours. The expiration date and time
  appear in the `GetParametersForImport` response. You cannot use an expired token
  in an `ImportKeyMaterial` request. If your key and token expire, send another
  `GetParametersForImport` request.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: No. You cannot perform this operation on a KMS key in a
  different Amazon Web Services account.

  **Required permissions**:
  [kms:GetParametersForImport](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  ## Related operations:

    * `ImportKeyMaterial`

    * `DeleteImportedKeyMaterial`
  """
  def get_parameters_for_import(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetParametersForImport", input, options)
  end

  @doc """
  Returns the public key of an asymmetric KMS key.

  Unlike the private key of a asymmetric KMS key, which never leaves KMS
  unencrypted, callers with `kms:GetPublicKey` permission can download the public
  key of an asymmetric KMS key. You can share the public key to allow others to
  encrypt messages and verify signatures outside of KMS. For information about
  asymmetric KMS keys, see [Asymmetric KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
  in the *Key Management Service Developer Guide*.

  You do not need to download the public key. Instead, you can use the public key
  within KMS by calling the `Encrypt`, `ReEncrypt`, or `Verify` operations with
  the identifier of an asymmetric KMS key. When you use the public key within KMS,
  you benefit from the authentication, authorization, and logging that are part of
  every KMS operation. You also reduce of risk of encrypting data that cannot be
  decrypted. These features are not effective outside of KMS. For details, see
  [Special Considerations for Downloading Public Keys](https://docs.aws.amazon.com/kms/latest/developerguide/download-public-key.html#download-public-key-considerations).

  To help you use the public key safely outside of KMS, `GetPublicKey` returns
  important information about the public key in the response, including:

    *
  [KeySpec](https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-KeySpec): The type of key material in the public key, such as `RSA_4096` or
  `ECC_NIST_P521`.

    *
  [KeyUsage](https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-KeyUsage):
  Whether the key is used for encryption or signing.

    *
  [EncryptionAlgorithms](https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-EncryptionAlgorithms) or
  [SigningAlgorithms](https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-SigningAlgorithms):
  A list of the encryption algorithms or the signing algorithms for the key.

  Although KMS cannot enforce these restrictions on external operations, it is
  crucial that you use this information to prevent the public key from being used
  improperly. For example, you can prevent a public signing key from being used
  encrypt data, or prevent a public key from being used with an encryption
  algorithm that is not supported by KMS. You can also avoid errors, such as using
  the wrong signing algorithm in a verification operation.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: Yes. To perform this operation with a KMS key in a
  different Amazon Web Services account, specify the key ARN or alias ARN in the
  value of the `KeyId` parameter.

  **Required permissions**:
  [kms:GetPublicKey](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  **Related operations**: `CreateKey`
  """
  def get_public_key(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetPublicKey", input, options)
  end

  @doc """
  Imports key material into an existing symmetric encryption KMS key that was
  created without key material.

  After you successfully import key material into a KMS key, you can [reimport the same key
  material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#reimport-key-material)
  into that KMS key, but you cannot import different key material.

  You cannot perform this operation on an asymmetric KMS key, an HMAC KMS key, or
  on any KMS key in a different Amazon Web Services account. For more information
  about creating KMS keys with no key material and then importing key material,
  see [Importing Key Material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
  in the *Key Management Service Developer Guide*.

  Before using this operation, call `GetParametersForImport`. Its response
  includes a public key and an import token. Use the public key to encrypt the key
  material. Then, submit the import token from the same `GetParametersForImport`
  response.

  When calling this operation, you must specify the following values:

    * The key ID or key ARN of a KMS key with no key material. Its
  `Origin` must be `EXTERNAL`.

  To create a KMS key with no key material, call `CreateKey` and set the value of
  its `Origin` parameter to `EXTERNAL`. To get the `Origin` of a KMS key, call
  `DescribeKey`.)

    * The encrypted key material. To get the public key to encrypt the
  key material, call `GetParametersForImport`.

    * The import token that `GetParametersForImport` returned. You must
  use a public key and token from the same `GetParametersForImport` response.

    * Whether the key material expires and if so, when. If you set an
  expiration date, KMS deletes the key material from the KMS key on the specified
  date, and the KMS key becomes unusable. To use the KMS key again, you must
  reimport the same key material. The only way to change an expiration date is by
  reimporting the same key material and specifying a new expiration date.

  When this operation is successful, the key state of the KMS key changes from
  `PendingImport` to `Enabled`, and you can use the KMS key.

  If this operation fails, use the exception to help determine the problem. If the
  error is related to the key material, the import token, or wrapping key, use
  `GetParametersForImport` to get a new public key and import token for the KMS
  key and repeat the import procedure. For help, see [How To Import Key Material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#importing-keys-overview)
  in the *Key Management Service Developer Guide*.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: No. You cannot perform this operation on a KMS key in a
  different Amazon Web Services account.

  **Required permissions**:
  [kms:ImportKeyMaterial](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  ## Related operations:

    * `DeleteImportedKeyMaterial`

    * `GetParametersForImport`
  """
  def import_key_material(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ImportKeyMaterial", input, options)
  end

  @doc """
  Gets a list of aliases in the caller's Amazon Web Services account and region.

  For more information about aliases, see `CreateAlias`.

  By default, the `ListAliases` operation returns all aliases in the account and
  region. To get only the aliases associated with a particular KMS key, use the
  `KeyId` parameter.

  The `ListAliases` response can include aliases that you created and associated
  with your customer managed keys, and aliases that Amazon Web Services created
  and associated with Amazon Web Services managed keys in your account. You can
  recognize Amazon Web Services aliases because their names have the format
  `aws/<service-name>`, such as `aws/dynamodb`.

  The response might also include aliases that have no `TargetKeyId` field. These
  are predefined aliases that Amazon Web Services has created but has not yet
  associated with a KMS key. Aliases that Amazon Web Services creates in your
  account, including predefined aliases, do not count against your [KMS aliases quota](https://docs.aws.amazon.com/kms/latest/developerguide/limits.html#aliases-limit).

  **Cross-account use**: No. `ListAliases` does not return aliases in other Amazon
  Web Services accounts.

  **Required permissions**:
  [kms:ListAliases](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html) (IAM policy)

  For details, see [Controlling access to
  aliases](https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access)
  in the *Key Management Service Developer Guide*.

  ## Related operations:

    * `CreateAlias`

    * `DeleteAlias`

    * `UpdateAlias`
  """
  def list_aliases(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAliases", input, options)
  end

  @doc """
  Gets a list of all grants for the specified KMS key.

  You must specify the KMS key in all requests. You can filter the grant list by
  grant ID or grantee principal.

  For detailed information about grants, including grant terminology, see [Grants in KMS](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html) in
  the * *Key Management Service Developer Guide* *. For examples of working with
  grants in several programming languages, see [Programming grants](https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html).

  The `GranteePrincipal` field in the `ListGrants` response usually contains the
  user or role designated as the grantee principal in the grant. However, when the
  grantee principal in the grant is an Amazon Web Services service, the
  `GranteePrincipal` field contains the [service principal](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#principal-services),
  which might represent several different grantee principals.

  **Cross-account use**: Yes. To perform this operation on a KMS key in a
  different Amazon Web Services account, specify the key ARN in the value of the
  `KeyId` parameter.

  **Required permissions**:
  [kms:ListGrants](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  ## Related operations:

    * `CreateGrant`

    * `ListRetirableGrants`

    * `RetireGrant`

    * `RevokeGrant`
  """
  def list_grants(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListGrants", input, options)
  end

  @doc """
  Gets the names of the key policies that are attached to a KMS key.

  This operation is designed to get policy names that you can use in a
  `GetKeyPolicy` operation. However, the only valid policy name is `default`.

  **Cross-account use**: No. You cannot perform this operation on a KMS key in a
  different Amazon Web Services account.

  **Required permissions**:
  [kms:ListKeyPolicies](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  ## Related operations:

    * `GetKeyPolicy`

    * `PutKeyPolicy`
  """
  def list_key_policies(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListKeyPolicies", input, options)
  end

  @doc """
  Gets a list of all KMS keys in the caller's Amazon Web Services account and
  Region.

  **Cross-account use**: No. You cannot perform this operation on a KMS key in a
  different Amazon Web Services account.

  **Required permissions**:
  [kms:ListKeys](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (IAM policy)

  ## Related operations:

    * `CreateKey`

    * `DescribeKey`

    * `ListAliases`

    * `ListResourceTags`
  """
  def list_keys(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListKeys", input, options)
  end

  @doc """
  Returns all tags on the specified KMS key.

  For general information about tags, including the format and syntax, see
  [Tagging Amazon Web Services resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
  the *Amazon Web Services General Reference*. For information about using tags in
  KMS, see [Tagging keys](https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html).

  **Cross-account use**: No. You cannot perform this operation on a KMS key in a
  different Amazon Web Services account.

  **Required permissions**:
  [kms:ListResourceTags](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  ## Related operations:

    * `CreateKey`

    * `ReplicateKey`

    * `TagResource`

    * `UntagResource`
  """
  def list_resource_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListResourceTags", input, options)
  end

  @doc """
  Returns information about all grants in the Amazon Web Services account and
  Region that have the specified retiring principal.

  You can specify any principal in your Amazon Web Services account. The grants
  that are returned include grants for KMS keys in your Amazon Web Services
  account and other Amazon Web Services accounts. You might use this operation to
  determine which grants you may retire. To retire a grant, use the `RetireGrant`
  operation.

  For detailed information about grants, including grant terminology, see [Grants in KMS](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html) in
  the * *Key Management Service Developer Guide* *. For examples of working with
  grants in several programming languages, see [Programming grants](https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html).

  **Cross-account use**: You must specify a principal in your Amazon Web Services
  account. However, this operation can return grants in any Amazon Web Services
  account. You do not need `kms:ListRetirableGrants` permission (or any other
  additional permission) in any Amazon Web Services account other than your own.

  **Required permissions**:
  [kms:ListRetirableGrants](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (IAM policy) in your Amazon Web Services account.

  ## Related operations:

    * `CreateGrant`

    * `ListGrants`

    * `RetireGrant`

    * `RevokeGrant`
  """
  def list_retirable_grants(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListRetirableGrants", input, options)
  end

  @doc """
  Attaches a key policy to the specified KMS key.

  For more information about key policies, see [Key Policies](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html)
  in the *Key Management Service Developer Guide*. For help writing and formatting
  a JSON policy document, see the [IAM JSON Policy Reference](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html)
  in the * *Identity and Access Management User Guide* *. For examples of adding a
  key policy in multiple programming languages, see [Setting a key policy](https://docs.aws.amazon.com/kms/latest/developerguide/programming-key-policies.html#put-policy)
  in the *Key Management Service Developer Guide*.

  **Cross-account use**: No. You cannot perform this operation on a KMS key in a
  different Amazon Web Services account.

  **Required permissions**:
  [kms:PutKeyPolicy](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  **Related operations**: `GetKeyPolicy`
  """
  def put_key_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutKeyPolicy", input, options)
  end

  @doc """
  Decrypts ciphertext and then reencrypts it entirely within KMS.

  You can use this operation to change the KMS key under which data is encrypted,
  such as when you [manually rotate](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotate-keys-manually)
  a KMS key or change the KMS key that protects a ciphertext. You can also use it
  to reencrypt ciphertext under the same KMS key, such as to change the
  [encryption context](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
  of a ciphertext.

  The `ReEncrypt` operation can decrypt ciphertext that was encrypted by using a
  KMS key in an KMS operation, such as `Encrypt` or `GenerateDataKey`. It can also
  decrypt ciphertext that was encrypted by using the public key of an [asymmetric KMS
  key](https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html#asymmetric-cmks)
  outside of KMS. However, it cannot decrypt ciphertext produced by other
  libraries, such as the [Amazon Web Services Encryption SDK](https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/) or
  [Amazon S3 client-side encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html).
  These libraries return a ciphertext format that is incompatible with KMS.

  When you use the `ReEncrypt` operation, you need to provide information for the
  decrypt operation and the subsequent encrypt operation.

    * If your ciphertext was encrypted under an asymmetric KMS key, you
  must use the `SourceKeyId` parameter to identify the KMS key that encrypted the
  ciphertext. You must also supply the encryption algorithm that was used. This
  information is required to decrypt the data.

    * If your ciphertext was encrypted under a symmetric encryption KMS
  key, the `SourceKeyId` parameter is optional. KMS can get this information from
  metadata that it adds to the symmetric ciphertext blob. This feature adds
  durability to your implementation by ensuring that authorized users can decrypt
  ciphertext decades after it was encrypted, even if they've lost track of the key
  ID. However, specifying the source KMS key is always recommended as a best
  practice. When you use the `SourceKeyId` parameter to specify a KMS key, KMS
  uses only the KMS key you specify. If the ciphertext was encrypted under a
  different KMS key, the `ReEncrypt` operation fails. This practice ensures that
  you use the KMS key that you intend.

    * To reencrypt the data, you must use the `DestinationKeyId`
  parameter specify the KMS key that re-encrypts the data after it is decrypted.
  If the destination KMS key is an asymmetric KMS key, you must also provide the
  encryption algorithm. The algorithm that you choose must be compatible with the
  KMS key.

  When you use an asymmetric KMS key to encrypt or reencrypt data, be sure to
  record the KMS key and encryption algorithm that you choose. You will be
  required to provide the same KMS key and encryption algorithm when you decrypt
  the data. If the KMS key and algorithm do not match the values used to encrypt
  the data, the decrypt operation fails.

  You are not required to supply the key ID and encryption algorithm when you
  decrypt with symmetric encryption KMS keys because KMS stores this information
  in the ciphertext blob. KMS cannot store metadata in ciphertext generated with
  asymmetric keys. The standard format for asymmetric key ciphertext does not
  include configurable fields.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: Yes. The source KMS key and destination KMS key can be in
  different Amazon Web Services accounts. Either or both KMS keys can be in a
  different account than the caller. To specify a KMS key in a different account,
  you must use its key ARN or alias ARN.

  **Required permissions**:

    *
  [kms:ReEncryptFrom](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html) permission on the source KMS key (key policy)

    *
  [kms:ReEncryptTo](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  permission on the destination KMS key (key policy)

  To permit reencryption from or to a KMS key, include the `"kms:ReEncrypt*"`
  permission in your [key policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html).
  This permission is automatically included in the key policy when you use the
  console to create a KMS key. But you must include it manually when you create a
  KMS key programmatically or when you use the `PutKeyPolicy` operation to set a
  key policy.

  ## Related operations:

    * `Decrypt`

    * `Encrypt`

    * `GenerateDataKey`

    * `GenerateDataKeyPair`
  """
  def re_encrypt(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ReEncrypt", input, options)
  end

  @doc """
  Replicates a multi-Region key into the specified Region.

  This operation creates a multi-Region replica key based on a multi-Region
  primary key in a different Region of the same Amazon Web Services partition. You
  can create multiple replicas of a primary key, but each must be in a different
  Region. To create a multi-Region primary key, use the `CreateKey` operation.

  This operation supports *multi-Region keys*, an KMS feature that lets you create
  multiple interoperable KMS keys in different Amazon Web Services Regions.
  Because these KMS keys have the same key ID, key material, and other metadata,
  you can use them interchangeably to encrypt data in one Amazon Web Services
  Region and decrypt it in a different Amazon Web Services Region without
  re-encrypting the data or making a cross-Region call. For more information about
  multi-Region keys, see [Multi-Region keys in KMS](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html)
  in the *Key Management Service Developer Guide*.

  A *replica key* is a fully-functional KMS key that can be used independently of
  its primary and peer replica keys. A primary key and its replica keys share
  properties that make them interoperable. They have the same [key ID](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-id)
  and key material. They also have the same [key spec](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-spec),
  [key usage](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-usage),
  [key material origin](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-origin),
  and [automatic key rotation status](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html).
  KMS automatically synchronizes these shared properties among related
  multi-Region keys. All other properties of a replica key can differ, including
  its [key policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html),
  [tags](https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html), [aliases](https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html),
  and [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html). KMS
  pricing and quotas for KMS keys apply to each primary key and replica key.

  When this operation completes, the new replica key has a transient key state of
  `Creating`. This key state changes to `Enabled` (or `PendingImport`) after a few
  seconds when the process of creating the new replica key is complete. While the
  key state is `Creating`, you can manage key, but you cannot yet use it in
  cryptographic operations. If you are creating and using the replica key
  programmatically, retry on `KMSInvalidStateException` or call `DescribeKey` to
  check its `KeyState` value before using it. For details about the `Creating` key
  state, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  You cannot create more than one replica of a primary key in any Region. If the
  Region already includes a replica of the key you're trying to replicate,
  `ReplicateKey` returns an `AlreadyExistsException` error. If the key state of
  the existing replica is `PendingDeletion`, you can cancel the scheduled key
  deletion (`CancelKeyDeletion`) or wait for the key to be deleted. The new
  replica key you create will have the same [shared properties](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html#mrk-sync-properties)
  as the original replica key.

  The CloudTrail log of a `ReplicateKey` operation records a `ReplicateKey`
  operation in the primary key's Region and a `CreateKey` operation in the replica
  key's Region.

  If you replicate a multi-Region primary key with imported key material, the
  replica key is created with no key material. You must import the same key
  material that you imported into the primary key. For details, see [Importing key material into multi-Region
  keys](kms/latest/developerguide/multi-region-keys-import.html) in the *Key
  Management Service Developer Guide*.

  To convert a replica key to a primary key, use the `UpdatePrimaryRegion`
  operation.

  `ReplicateKey` uses different default values for the `KeyPolicy` and `Tags`
  parameters than those used in the KMS console. For details, see the parameter
  descriptions.

  **Cross-account use**: No. You cannot use this operation to create a replica key
  in a different Amazon Web Services account.

  **Required permissions**:

    * `kms:ReplicateKey` on the primary key (in the primary key's
  Region). Include this permission in the primary key's key policy.

    * `kms:CreateKey` in an IAM policy in the replica Region.

    * To use the `Tags` parameter, `kms:TagResource` in an IAM policy in
  the replica Region.

  ## Related operations

    * `CreateKey`

    * `UpdatePrimaryRegion`
  """
  def replicate_key(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ReplicateKey", input, options)
  end

  @doc """
  Deletes a grant.

  Typically, you retire a grant when you no longer need its permissions. To
  identify the grant to retire, use a [grant token](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token),
  or both the grant ID and a key identifier (key ID or key ARN) of the KMS key.
  The `CreateGrant` operation returns both values.

  This operation can be called by the *retiring principal* for a grant, by the
  *grantee principal* if the grant allows the `RetireGrant` operation, and by the
  Amazon Web Services account in which the grant is created. It can also be called
  by principals to whom permission for retiring a grant is delegated. For details,
  see [Retiring and revoking grants](https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#grant-delete)
  in the *Key Management Service Developer Guide*.

  For detailed information about grants, including grant terminology, see [Grants in KMS](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html) in
  the * *Key Management Service Developer Guide* *. For examples of working with
  grants in several programming languages, see [Programming grants](https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html).

  **Cross-account use**: Yes. You can retire a grant on a KMS key in a different
  Amazon Web Services account.

  **Required permissions:**:Permission to retire a grant is determined primarily
  by the grant. For details, see [Retiring and revoking grants](https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#grant-delete)
  in the *Key Management Service Developer Guide*.

  ## Related operations:

    * `CreateGrant`

    * `ListGrants`

    * `ListRetirableGrants`

    * `RevokeGrant`
  """
  def retire_grant(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RetireGrant", input, options)
  end

  @doc """
  Deletes the specified grant.

  You revoke a grant to terminate the permissions that the grant allows. For more
  information, see [Retiring and revoking grants](https://docs.aws.amazon.com/kms/latest/developerguide/managing-grants.html#grant-delete)
  in the * *Key Management Service Developer Guide* *.

  When you create, retire, or revoke a grant, there might be a brief delay,
  usually less than five minutes, until the grant is available throughout KMS.
  This state is known as *eventual consistency*. For details, see [Eventual consistency](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-eventual-consistency)
  in the * *Key Management Service Developer Guide* *.

  For detailed information about grants, including grant terminology, see [Grants in KMS](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html) in
  the * *Key Management Service Developer Guide* *. For examples of working with
  grants in several programming languages, see [Programming grants](https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html).

  **Cross-account use**: Yes. To perform this operation on a KMS key in a
  different Amazon Web Services account, specify the key ARN in the value of the
  `KeyId` parameter.

  **Required permissions**:
  [kms:RevokeGrant](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy).

  ## Related operations:

    * `CreateGrant`

    * `ListGrants`

    * `ListRetirableGrants`

    * `RetireGrant`
  """
  def revoke_grant(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RevokeGrant", input, options)
  end

  @doc """
  Schedules the deletion of a KMS key.

  By default, KMS applies a waiting period of 30 days, but you can specify a
  waiting period of 7-30 days. When this operation is successful, the key state of
  the KMS key changes to `PendingDeletion` and the key can't be used in any
  cryptographic operations. It remains in this state for the duration of the
  waiting period. Before the waiting period ends, you can use `CancelKeyDeletion`
  to cancel the deletion of the KMS key. After the waiting period ends, KMS
  deletes the KMS key, its key material, and all KMS data associated with it,
  including all aliases that refer to it.

  Deleting a KMS key is a destructive and potentially dangerous operation. When a
  KMS key is deleted, all data that was encrypted under the KMS key is
  unrecoverable. (The only exception is a multi-Region replica key.) To prevent
  the use of a KMS key without deleting it, use `DisableKey`.

  If you schedule deletion of a KMS key from a [custom key store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html),
  when the waiting period expires, `ScheduleKeyDeletion` deletes the KMS key from
  KMS. Then KMS makes a best effort to delete the key material from the associated
  CloudHSM cluster. However, you might need to manually [delete the orphaned key material](https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key)
  from the cluster and its backups.

  You can schedule the deletion of a multi-Region primary key and its replica keys
  at any time. However, KMS will not delete a multi-Region primary key with
  existing replica keys. If you schedule the deletion of a primary key with
  replicas, its key state changes to `PendingReplicaDeletion` and it cannot be
  replicated or used in cryptographic operations. This status can continue
  indefinitely. When the last of its replicas keys is deleted (not just
  scheduled), the key state of the primary key changes to `PendingDeletion` and
  its waiting period (`PendingWindowInDays`) begins. For details, see [Deleting multi-Region
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-delete.html)
  in the *Key Management Service Developer Guide*.

  For more information about scheduling a KMS key for deletion, see [Deleting KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html)
  in the *Key Management Service Developer Guide*.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: No. You cannot perform this operation on a KMS key in a
  different Amazon Web Services account.

  **Required permissions**: kms:ScheduleKeyDeletion (key policy)

  ## Related operations

    * `CancelKeyDeletion`

    * `DisableKey`
  """
  def schedule_key_deletion(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ScheduleKeyDeletion", input, options)
  end

  @doc """
  Creates a [digital signature](https://en.wikipedia.org/wiki/Digital_signature) for a message or message digest by using the private key in an asymmetric
  signing KMS key.

  To verify the signature, use the `Verify` operation, or use the public key in
  the same asymmetric KMS key outside of KMS. For information about asymmetric KMS
  keys, see [Asymmetric KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
  in the *Key Management Service Developer Guide*.

  Digital signatures are generated and verified by using asymmetric key pair, such
  as an RSA or ECC pair that is represented by an asymmetric KMS key. The key
  owner (or an authorized user) uses their private key to sign a message. Anyone
  with the public key can verify that the message was signed with that particular
  private key and that the message hasn't changed since it was signed.

  To use the `Sign` operation, provide the following information:

    * Use the `KeyId` parameter to identify an asymmetric KMS key with a
  `KeyUsage` value of `SIGN_VERIFY`. To get the `KeyUsage` value of a KMS key, use
  the `DescribeKey` operation. The caller must have `kms:Sign` permission on the
  KMS key.

    * Use the `Message` parameter to specify the message or message
  digest to sign. You can submit messages of up to 4096 bytes. To sign a larger
  message, generate a hash digest of the message, and then provide the hash digest
  in the `Message` parameter. To indicate whether the message is a full message or
  a digest, use the `MessageType` parameter.

    * Choose a signing algorithm that is compatible with the KMS key.

  When signing a message, be sure to record the KMS key and the signing algorithm.
  This information is required to verify the signature.

  Best practices recommend that you limit the time during which any signature is
  effective. This deters an attack where the actor uses a signed message to
  establish validity repeatedly or long after the message is superseded.
  Signatures do not include a timestamp, but you can include a timestamp in the
  signed message to help you detect when its time to refresh the signature.

  To verify the signature that this operation generates, use the `Verify`
  operation. Or use the `GetPublicKey` operation to download the public key and
  then use the public key to verify the signature outside of KMS.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: Yes. To perform this operation with a KMS key in a
  different Amazon Web Services account, specify the key ARN or alias ARN in the
  value of the `KeyId` parameter.

  **Required permissions**:
  [kms:Sign](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  **Related operations**: `Verify`
  """
  def sign(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "Sign", input, options)
  end

  @doc """
  Adds or edits tags on a [customer managed key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk).

  Tagging or untagging a KMS key can allow or deny permission to the KMS key. For
  details, see [ABAC in KMS](https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in the
  *Key Management Service Developer Guide*.

  Each tag consists of a tag key and a tag value, both of which are case-sensitive
  strings. The tag value can be an empty (null) string. To add a tag, specify a
  new tag key and a tag value. To edit a tag, specify an existing tag key and a
  new tag value.

  You can use this operation to tag a [customer managed key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk),
  but you cannot tag an [Amazon Web Services managed key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk),
  an [Amazon Web Services owned key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk),
  a [custom key store](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#keystore-concept),
  or an
  [alias](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#alias-concept).  You can also add tags to a KMS key while creating it (`CreateKey`) or
  replicating it (`ReplicateKey`).

  For information about using tags in KMS, see [Tagging
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html).
  For general information about tags, including the format and syntax, see
  [Tagging Amazon Web Services resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
  the *Amazon Web Services General Reference*.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: No. You cannot perform this operation on a KMS key in a
  different Amazon Web Services account.

  **Required permissions**:
  [kms:TagResource](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  ## Related operations

    * `CreateKey`

    * `ListResourceTags`

    * `ReplicateKey`

    * `UntagResource`
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Deletes tags from a [customer managed key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk).

  To delete a tag, specify the tag key and the KMS key.

  Tagging or untagging a KMS key can allow or deny permission to the KMS key. For
  details, see [ABAC in KMS](https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in the
  *Key Management Service Developer Guide*.

  When it succeeds, the `UntagResource` operation doesn't return any output. Also,
  if the specified tag key isn't found on the KMS key, it doesn't throw an
  exception or return a response. To confirm that the operation worked, use the
  `ListResourceTags` operation.

  For information about using tags in KMS, see [Tagging keys](https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html).
  For general information about tags, including the format and syntax, see
  [Tagging Amazon Web Services resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
  the *Amazon Web Services General Reference*.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: No. You cannot perform this operation on a KMS key in a
  different Amazon Web Services account.

  **Required permissions**:
  [kms:UntagResource](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  ## Related operations

    * `CreateKey`

    * `ListResourceTags`

    * `ReplicateKey`

    * `TagResource`
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Associates an existing KMS alias with a different KMS key.

  Each alias is associated with only one KMS key at a time, although a KMS key can
  have multiple aliases. The alias and the KMS key must be in the same Amazon Web
  Services account and Region.

  Adding, deleting, or updating an alias can allow or deny permission to the KMS
  key. For details, see [ABAC in KMS](https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in the
  *Key Management Service Developer Guide*.

  The current and new KMS key must be the same type (both symmetric or both
  asymmetric), and they must have the same key usage (`ENCRYPT_DECRYPT` or
  `SIGN_VERIFY`). This restriction prevents errors in code that uses aliases. If
  you must assign an alias to a different type of KMS key, use `DeleteAlias` to
  delete the old alias and `CreateAlias` to create a new alias.

  You cannot use `UpdateAlias` to change an alias name. To change an alias name,
  use `DeleteAlias` to delete the old alias and `CreateAlias` to create a new
  alias.

  Because an alias is not a property of a KMS key, you can create, update, and
  delete the aliases of a KMS key without affecting the KMS key. Also, aliases do
  not appear in the response from the `DescribeKey` operation. To get the aliases
  of all KMS keys in the account, use the `ListAliases` operation.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: No. You cannot perform this operation on a KMS key in a
  different Amazon Web Services account.

  ## Required permissions

    *
  [kms:UpdateAlias](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html) on the alias (IAM policy).

    *
  [kms:UpdateAlias](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  on the current KMS key (key policy).

    *
  [kms:UpdateAlias](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html) on the new KMS key (key policy).

  For details, see [Controlling access to
  aliases](https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access)
  in the *Key Management Service Developer Guide*.

  ## Related operations:

    * `CreateAlias`

    * `DeleteAlias`

    * `ListAliases`
  """
  def update_alias(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateAlias", input, options)
  end

  @doc """
  Changes the properties of a custom key store.

  Use the `CustomKeyStoreId` parameter to identify the custom key store you want
  to edit. Use the remaining parameters to change the properties of the custom key
  store.

  You can only update a custom key store that is disconnected. To disconnect the
  custom key store, use `DisconnectCustomKeyStore`. To reconnect the custom key
  store after the update completes, use `ConnectCustomKeyStore`. To find the
  connection state of a custom key store, use the `DescribeCustomKeyStores`
  operation.

  The `CustomKeyStoreId` parameter is required in all commands. Use the other
  parameters of `UpdateCustomKeyStore` to edit your key store settings.

    * Use the `NewCustomKeyStoreName` parameter to change the friendly
  name of the custom key store to the value that you specify.

    * Use the `KeyStorePassword` parameter tell KMS the current password
  of the [ `kmsuser` crypto user (CU)](https://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser)
  in the associated CloudHSM cluster. You can use this parameter to [fix connection
  failures](https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-password)
  that occur when KMS cannot log into the associated cluster because the `kmsuser`
  password has changed. This value does not change the password in the CloudHSM
  cluster.

    * Use the `CloudHsmClusterId` parameter to associate the custom key
  store with a different, but related, CloudHSM cluster. You can use this
  parameter to repair a custom key store if its CloudHSM cluster becomes corrupted
  or is deleted, or when you need to create or restore a cluster from a backup.

  If the operation succeeds, it returns a JSON object with no properties.

  This operation is part of the [Custom Key Store feature](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  feature in KMS, which combines the convenience and extensive integration of KMS
  with the isolation and control of a single-tenant key store.

  **Cross-account use**: No. You cannot perform this operation on a custom key
  store in a different Amazon Web Services account.

  **Required permissions**:
  [kms:UpdateCustomKeyStore](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (IAM policy)

  ## Related operations:

    * `ConnectCustomKeyStore`

    * `CreateCustomKeyStore`

    * `DeleteCustomKeyStore`

    * `DescribeCustomKeyStores`

    * `DisconnectCustomKeyStore`
  """
  def update_custom_key_store(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateCustomKeyStore", input, options)
  end

  @doc """
  Updates the description of a KMS key.

  To see the description of a KMS key, use `DescribeKey`.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: No. You cannot perform this operation on a KMS key in a
  different Amazon Web Services account.

  **Required permissions**:
  [kms:UpdateKeyDescription](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  ## Related operations

    * `CreateKey`

    * `DescribeKey`
  """
  def update_key_description(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateKeyDescription", input, options)
  end

  @doc """
  Changes the primary key of a multi-Region key.

  This operation changes the replica key in the specified Region to a primary key
  and changes the former primary key to a replica key. For example, suppose you
  have a primary key in `us-east-1` and a replica key in `eu-west-2`. If you run
  `UpdatePrimaryRegion` with a `PrimaryRegion` value of `eu-west-2`, the primary
  key is now the key in `eu-west-2`, and the key in `us-east-1` becomes a replica
  key. For details, see [Updating the primary Region](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-manage.html#multi-region-update)
  in the *Key Management Service Developer Guide*.

  This operation supports *multi-Region keys*, an KMS feature that lets you create
  multiple interoperable KMS keys in different Amazon Web Services Regions.
  Because these KMS keys have the same key ID, key material, and other metadata,
  you can use them interchangeably to encrypt data in one Amazon Web Services
  Region and decrypt it in a different Amazon Web Services Region without
  re-encrypting the data or making a cross-Region call. For more information about
  multi-Region keys, see [Multi-Region keys in KMS](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html)
  in the *Key Management Service Developer Guide*.

  The *primary key* of a multi-Region key is the source for properties that are
  always shared by primary and replica keys, including the key material, [key ID](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-id),
  [key spec](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-spec),
  [key usage](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-usage),
  [key material origin](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-origin),
  and [automatic key rotation](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html).
  It's the only key that can be replicated. You cannot [delete the primary key](https://docs.aws.amazon.com/kms/latest/APIReference/API_ScheduleKeyDeletion.html)
  until all replica keys are deleted.

  The key ID and primary Region that you specify uniquely identify the replica key
  that will become the primary key. The primary Region must already have a replica
  key. This operation does not create a KMS key in the specified Region. To find
  the replica keys, use the `DescribeKey` operation on the primary key or any
  replica key. To create a replica key, use the `ReplicateKey` operation.

  You can run this operation while using the affected multi-Region keys in
  cryptographic operations. This operation should not delay, interrupt, or cause
  failures in cryptographic operations.

  Even after this operation completes, the process of updating the primary Region
  might still be in progress for a few more seconds. Operations such as
  `DescribeKey` might display both the old and new primary keys as replicas. The
  old and new primary keys have a transient key state of `Updating`. The original
  key state is restored when the update is complete. While the key state is
  `Updating`, you can use the keys in cryptographic operations, but you cannot
  replicate the new primary key or perform certain management operations, such as
  enabling or disabling these keys. For details about the `Updating` key state,
  see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  This operation does not return any output. To verify that primary key is
  changed, use the `DescribeKey` operation.

  **Cross-account use**: No. You cannot use this operation in a different Amazon
  Web Services account.

  **Required permissions**:

    * `kms:UpdatePrimaryRegion` on the current primary key (in the
  primary key's Region). Include this permission primary key's key policy.

    * `kms:UpdatePrimaryRegion` on the current replica key (in the
  replica key's Region). Include this permission in the replica key's key policy.

  ## Related operations

    * `CreateKey`

    * `ReplicateKey`
  """
  def update_primary_region(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdatePrimaryRegion", input, options)
  end

  @doc """
  Verifies a digital signature that was generated by the `Sign` operation.

  Verification confirms that an authorized user signed the message with the
  specified KMS key and signing algorithm, and the message hasn't changed since it
  was signed. If the signature is verified, the value of the `SignatureValid`
  field in the response is `True`. If the signature verification fails, the
  `Verify` operation fails with an `KMSInvalidSignatureException` exception.

  A digital signature is generated by using the private key in an asymmetric KMS
  key. The signature is verified by using the public key in the same asymmetric
  KMS key. For information about asymmetric KMS keys, see [Asymmetric KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
  in the *Key Management Service Developer Guide*.

  To verify a digital signature, you can use the `Verify` operation. Specify the
  same asymmetric KMS key, message, and signing algorithm that were used to
  produce the signature.

  You can also verify the digital signature by using the public key of the KMS key
  outside of KMS. Use the `GetPublicKey` operation to download the public key in
  the asymmetric KMS key and then use the public key to verify the signature
  outside of KMS. The advantage of using the `Verify` operation is that it is
  performed within KMS. As a result, it's easy to call, the operation is performed
  within the FIPS boundary, it is logged in CloudTrail, and you can use key policy
  and IAM policy to determine who is authorized to use the KMS key to verify
  signatures.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: Yes. To perform this operation with a KMS key in a
  different Amazon Web Services account, specify the key ARN or alias ARN in the
  value of the `KeyId` parameter.

  **Required permissions**:
  [kms:Verify](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  **Related operations**: `Sign`
  """
  def verify(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "Verify", input, options)
  end

  @doc """
  Verifies the hash-based message authentication code (HMAC) for a specified
  message, HMAC KMS key, and MAC algorithm.

  To verify the HMAC, `VerifyMac` computes an HMAC using the message, HMAC KMS
  key, and MAC algorithm that you specify, and compares the computed HMAC to the
  HMAC that you specify. If the HMACs are identical, the verification succeeds;
  otherwise, it fails.

  Verification indicates that the message hasn't changed since the HMAC was
  calculated, and the specified key was used to generate and verify the HMAC.

  This operation is part of KMS support for HMAC KMS keys. For details, see [HMAC keys in KMS](https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html) in
  the *Key Management Service Developer Guide*.

  The KMS key that you use for this operation must be in a compatible key state.
  For details, see [Key states of KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in
  the *Key Management Service Developer Guide*.

  **Cross-account use**: Yes. To perform this operation with a KMS key in a
  different Amazon Web Services account, specify the key ARN or alias ARN in the
  value of the `KeyId` parameter.

  **Required permissions**:
  [kms:VerifyMac](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
  (key policy)

  **Related operations**: `GenerateMac`
  """
  def verify_mac(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "VerifyMac", input, options)
  end
end
