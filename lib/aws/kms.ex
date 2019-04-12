# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.KMS do
  @moduledoc """
  AWS Key Management Service

  AWS Key Management Service (AWS KMS) is an encryption and key management
  web service. This guide describes the AWS KMS operations that you can call
  programmatically. For general information about AWS KMS, see the [ *AWS Key
  Management Service Developer Guide*
  ](http://docs.aws.amazon.com/kms/latest/developerguide/).

  <note> AWS provides SDKs that consist of libraries and sample code for
  various programming languages and platforms (Java, Ruby, .Net, macOS,
  Android, etc.). The SDKs provide a convenient way to create programmatic
  access to AWS KMS and other AWS services. For example, the SDKs take care
  of tasks such as signing requests (see below), managing errors, and
  retrying requests automatically. For more information about the AWS SDKs,
  including how to download and install them, see [Tools for Amazon Web
  Services](http://aws.amazon.com/tools/).

  </note> We recommend that you use the AWS SDKs to make programmatic API
  calls to AWS KMS.

  Clients must support TLS (Transport Layer Security) 1.0. We recommend TLS
  1.2. Clients must also support cipher suites with Perfect Forward Secrecy
  (PFS) such as Ephemeral Diffie-Hellman (DHE) or Elliptic Curve Ephemeral
  Diffie-Hellman (ECDHE). Most modern systems such as Java 7 and later
  support these modes.

  **Signing Requests**

  Requests must be signed by using an access key ID and a secret access key.
  We strongly recommend that you *do not* use your AWS account (root) access
  key ID and secret key for everyday work with AWS KMS. Instead, use the
  access key ID and secret access key for an IAM user, or you can use the AWS
  Security Token Service to generate temporary security credentials that you
  can use to sign requests.

  All AWS KMS operations require [Signature Version
  4](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  **Logging API Requests**

  AWS KMS supports AWS CloudTrail, a service that logs AWS API calls and
  related events for your AWS account and delivers them to an Amazon S3
  bucket that you specify. By using the information collected by CloudTrail,
  you can determine what requests were made to AWS KMS, who made the request,
  when it was made, and so on. To learn more about CloudTrail, including how
  to turn it on and find your log files, see the [AWS CloudTrail User
  Guide](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/).

  **Additional Resources**

  For more information about credentials and request signing, see the
  following:

  <ul> <li> [AWS Security
  Credentials](http://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html)
  - This topic provides general information about the of credentials used for
  accessing AWS.

  </li> <li> [Temporary Security
  Credentials](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html)
  - This section of the *IAM User Guide* describes how to create and use
  temporary security credentials.

  </li> <li> [Signature Version 4 Signing
  Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html)
  - This set of topics walks you through the process of signing a request
  using an access key ID and a secret access key.

  </li> </ul> **Commonly Used APIs**

  Of the APIs discussed in this guide, the following will prove the most
  useful for most applications. You will likely perform actions other than
  these, such as creating keys and assigning policies, by using the console.

  <ul> <li> `Encrypt`

  </li> <li> `Decrypt`

  </li> <li> `GenerateDataKey`

  </li> <li> `GenerateDataKeyWithoutPlaintext`

  </li> </ul>
  """

  @doc """
  Cancels the deletion of a customer master key (CMK). When this operation is
  successful, the CMK is set to the `Disabled` state. To enable a CMK, use
  `EnableKey`. You cannot perform this operation on a CMK in a different AWS
  account.

  For more information about scheduling and canceling deletion of a CMK, see
  [Deleting Customer Master
  Keys](http://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html)
  in the *AWS Key Management Service Developer Guide*.

  The result of this operation varies with the key state of the CMK. For
  details, see [How Key State Affects Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def cancel_key_deletion(client, input, options \\ []) do
    request(client, "CancelKeyDeletion", input, options)
  end

  @doc """
  Connects or reconnects a [custom key
  store](http://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html)
  to its associated AWS CloudHSM cluster.

  The custom key store must be connected before you can create customer
  master keys (CMKs) in the key store or use the CMKs it contains. You can
  disconnect and reconnect a custom key store at any time.

  To connect a custom key store, its associated AWS CloudHSM cluster must
  have at least one active HSM. To get the number of active HSMs in a
  cluster, use the
  [DescribeClusters](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters)
  operation. To add HSMs to the cluster, use the
  [CreateHsm](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_CreateHsm)
  operation.

  The connection process can take an extended amount of time to complete; up
  to 20 minutes. This operation starts the connection process, but it does
  not wait for it to complete. When it succeeds, this operation quickly
  returns an HTTP 200 response and a JSON object with no properties. However,
  this response does not indicate that the custom key store is connected. To
  get the connection state of the custom key store, use the
  `DescribeCustomKeyStores` operation.

  During the connection process, AWS KMS finds the AWS CloudHSM cluster that
  is associated with the custom key store, creates the connection
  infrastructure, connects to the cluster, logs into the AWS CloudHSM client
  as the [ `kmsuser` crypto
  user](http://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser)
  (CU), and rotates its password.

  The `ConnectCustomKeyStore` operation might fail for various reasons. To
  find the reason, use the `DescribeCustomKeyStores` operation and see the
  `ConnectionErrorCode` in the response. For help interpreting the
  `ConnectionErrorCode`, see `CustomKeyStoresListEntry`.

  To fix the failure, use the `DisconnectCustomKeyStore` operation to
  disconnect the custom key store, correct the error, use the
  `UpdateCustomKeyStore` operation if necessary, and then use
  `ConnectCustomKeyStore` again.

  If you are having trouble connecting or disconnecting a custom key store,
  see [Troubleshooting a Custom Key
  Store](http://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def connect_custom_key_store(client, input, options \\ []) do
    request(client, "ConnectCustomKeyStore", input, options)
  end

  @doc """
  Creates a display name for a customer master key (CMK). You can use an
  alias to identify a CMK in selected operations, such as `Encrypt` and
  `GenerateDataKey`.

  Each CMK can have multiple aliases, but each alias points to only one CMK.
  The alias name must be unique in the AWS account and region. To simplify
  code that runs in multiple regions, use the same alias name, but point it
  to a different CMK in each region.

  Because an alias is not a property of a CMK, you can delete and change the
  aliases of a CMK without affecting the CMK. Also, aliases do not appear in
  the response from the `DescribeKey` operation. To get the aliases of all
  CMKs, use the `ListAliases` operation.

  An alias must start with the word `alias` followed by a forward slash
  (`alias/`). The alias name can contain only alphanumeric characters,
  forward slashes (/), underscores (_), and dashes (-). Alias names cannot
  begin with `aws`; that alias name prefix is reserved by Amazon Web Services
  (AWS).

  The alias and the CMK it is mapped to must be in the same AWS account and
  the same region. You cannot perform this operation on an alias in a
  different AWS account.

  To map an existing alias to a different CMK, call `UpdateAlias`.

  The result of this operation varies with the key state of the CMK. For
  details, see [How Key State Affects Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def create_alias(client, input, options \\ []) do
    request(client, "CreateAlias", input, options)
  end

  @doc """
  Creates a [custom key
  store](http://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html)
  that is associated with an [AWS CloudHSM
  cluster](http://docs.aws.amazon.com/cloudhsm/latest/userguide/clusters.html)
  that you own and manage.

  This operation is part of the [Custom Key Store
  feature](http://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  feature in AWS KMS, which combines the convenience and extensive
  integration of AWS KMS with the isolation and control of a single-tenant
  key store.

  When the operation completes successfully, it returns the ID of the new
  custom key store. Before you can use your new custom key store, you need to
  use the `ConnectCustomKeyStore` operation to connect the new key store to
  its AWS CloudHSM cluster.

  The `CreateCustomKeyStore` operation requires the following elements.

  <ul> <li> You must specify an active AWS CloudHSM cluster in the same
  account and AWS Region as the custom key store. You can use an existing
  cluster or [create and activate a new AWS CloudHSM
  cluster](http://docs.aws.amazon.com/cloudhsm/latest/userguide/create-cluster.html)
  for the key store. AWS KMS does not require exclusive use of the cluster.

  </li> <li> You must include the content of the *trust anchor certificate*
  for the cluster. You created this certificate, and saved it in the
  `customerCA.crt` file, when you [initialized the
  cluster](http://docs.aws.amazon.com/cloudhsm/latest/userguide/initialize-cluster.html#sign-csr).

  </li> <li> You must provide the password of the dedicated [ `kmsuser`
  crypto
  user](http://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser)
  (CU) account in the cluster.

  Before you create the custom key store, use the
  [createUser](http://docs.aws.amazon.com/cloudhsm/latest/userguide/cloudhsm_mgmt_util-createUser.html)
  command in `cloudhsm_mgmt_util` to create [a crypto user (CU) named
  `kmsuser`
  ](http://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser)in
  specified AWS CloudHSM cluster. AWS KMS uses the `kmsuser` CU account to
  create and manage key material on your behalf. For instructions, see
  [Create the kmsuser Crypto
  User](http://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore)
  in the *AWS Key Management Service Developer Guide*.

  </li> </ul> The AWS CloudHSM cluster that you specify must meet the
  following requirements.

  <ul> <li> The cluster must be active and be in the same AWS account and
  Region as the custom key store.

  </li> <li> Each custom key store must be associated with a different AWS
  CloudHSM cluster. The cluster cannot be associated with another custom key
  store or have the same cluster certificate as a cluster that is associated
  with another custom key store. To view the cluster certificate, use the AWS
  CloudHSM
  [DescribeClusters](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html)
  operation. Clusters that share a backup history have the same cluster
  certificate.

  </li> <li> The cluster must be configured with subnets in at least two
  different Availability Zones in the Region. Because AWS CloudHSM is not
  supported in all Availability Zones, we recommend that the cluster have
  subnets in all Availability Zones in the Region.

  </li> <li> The cluster must contain at least two active HSMs, each in a
  different Availability Zone.

  </li> </ul> New custom key stores are not automatically connected. After
  you create your custom key store, use the `ConnectCustomKeyStore` operation
  to connect the custom key store to its associated AWS CloudHSM cluster.
  Even if you are not going to use your custom key store immediately, you
  might want to connect it to verify that all settings are correct and then
  disconnect it until you are ready to use it.

  If this operation succeeds, it returns the ID of the new custom key store.
  For help with failures, see [Troubleshoot a Custom Key
  Store](http://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html)
  in the *AWS KMS Developer Guide*.
  """
  def create_custom_key_store(client, input, options \\ []) do
    request(client, "CreateCustomKeyStore", input, options)
  end

  @doc """
  Adds a grant to a customer master key (CMK). The grant specifies who can
  use the CMK and under what conditions. When setting permissions, grants are
  an alternative to key policies.

  To perform this operation on a CMK in a different AWS account, specify the
  key ARN in the value of the `KeyId` parameter. For more information about
  grants, see
  [Grants](http://docs.aws.amazon.com/kms/latest/developerguide/grants.html)
  in the *AWS Key Management Service Developer Guide*.

  The result of this operation varies with the key state of the CMK. For
  details, see [How Key State Affects Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def create_grant(client, input, options \\ []) do
    request(client, "CreateGrant", input, options)
  end

  @doc """
  Creates a customer master key (CMK) in the caller's AWS account.

  You can use a CMK to encrypt small amounts of data (4 KiB or less)
  directly, but CMKs are more commonly used to encrypt data keys, which are
  used to encrypt raw data. For more information about data keys and the
  difference between CMKs and data keys, see the following:

  <ul> <li> The `GenerateDataKey` operation

  </li> <li> [AWS Key Management Service
  Concepts](http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html)
  in the *AWS Key Management Service Developer Guide*

  </li> </ul> If you plan to [import key
  material](http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html),
  use the `Origin` parameter with a value of `EXTERNAL` to create a CMK with
  no key material.

  To create a CMK in a [custom key
  store](http://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html),
  use `CustomKeyStoreId` parameter to specify the custom key store. You must
  also use the `Origin` parameter with a value of `AWS_CLOUDHSM`. The AWS
  CloudHSM cluster that is associated with the custom key store must have at
  least two active HSMs, each in a different Availability Zone in the Region.

  You cannot use this operation to create a CMK in a different AWS account.
  """
  def create_key(client, input, options \\ []) do
    request(client, "CreateKey", input, options)
  end

  @doc """
  Decrypts ciphertext. Ciphertext is plaintext that has been previously
  encrypted by using any of the following operations:

  <ul> <li> `GenerateDataKey`

  </li> <li> `GenerateDataKeyWithoutPlaintext`

  </li> <li> `Encrypt`

  </li> </ul> Note that if a caller has been granted access permissions to
  all keys (through, for example, IAM user policies that grant `Decrypt`
  permission on all resources), then ciphertext encrypted by using keys in
  other accounts where the key grants access to the caller can be decrypted.
  To remedy this, we recommend that you do not grant `Decrypt` access in an
  IAM user policy. Instead grant `Decrypt` access only in key policies. If
  you must grant `Decrypt` access in an IAM user policy, you should scope the
  resource to specific keys or to specific trusted accounts.

  The result of this operation varies with the key state of the CMK. For
  details, see [How Key State Affects Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def decrypt(client, input, options \\ []) do
    request(client, "Decrypt", input, options)
  end

  @doc """
  Deletes the specified alias. You cannot perform this operation on an alias
  in a different AWS account.

  Because an alias is not a property of a CMK, you can delete and change the
  aliases of a CMK without affecting the CMK. Also, aliases do not appear in
  the response from the `DescribeKey` operation. To get the aliases of all
  CMKs, use the `ListAliases` operation.

  Each CMK can have multiple aliases. To change the alias of a CMK, use
  `DeleteAlias` to delete the current alias and `CreateAlias` to create a new
  alias. To associate an existing alias with a different customer master key
  (CMK), call `UpdateAlias`.
  """
  def delete_alias(client, input, options \\ []) do
    request(client, "DeleteAlias", input, options)
  end

  @doc """
  Deletes a [custom key
  store](http://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html).
  This operation does not delete the AWS CloudHSM cluster that is associated
  with the custom key store, or affect any users or keys in the cluster.

  The custom key store that you delete cannot contain any AWS KMS [customer
  master keys
  (CMKs)](http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys).
  Before deleting the key store, verify that you will never need to use any
  of the CMKs in the key store for any cryptographic operations. Then, use
  `ScheduleKeyDeletion` to delete the AWS KMS customer master keys (CMKs)
  from the key store. When the scheduled waiting period expires, the
  `ScheduleKeyDeletion` operation deletes the CMKs. Then it makes a best
  effort to delete the key material from the associated cluster. However, you
  might need to manually [delete the orphaned key
  material](http://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key)
  from the cluster and its backups.

  After all CMKs are deleted from AWS KMS, use `DisconnectCustomKeyStore` to
  disconnect the key store from AWS KMS. Then, you can delete the custom key
  store.

  Instead of deleting the custom key store, consider using
  `DisconnectCustomKeyStore` to disconnect it from AWS KMS. While the key
  store is disconnected, you cannot create or use the CMKs in the key store.
  But, you do not need to delete CMKs and you can reconnect a disconnected
  custom key store at any time.

  If the operation succeeds, it returns a JSON object with no properties.

  This operation is part of the [Custom Key Store
  feature](http://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  feature in AWS KMS, which combines the convenience and extensive
  integration of AWS KMS with the isolation and control of a single-tenant
  key store.
  """
  def delete_custom_key_store(client, input, options \\ []) do
    request(client, "DeleteCustomKeyStore", input, options)
  end

  @doc """
  Deletes key material that you previously imported. This operation makes the
  specified customer master key (CMK) unusable. For more information about
  importing key material into AWS KMS, see [Importing Key
  Material](http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
  in the *AWS Key Management Service Developer Guide*. You cannot perform
  this operation on a CMK in a different AWS account.

  When the specified CMK is in the `PendingDeletion` state, this operation
  does not change the CMK's state. Otherwise, it changes the CMK's state to
  `PendingImport`.

  After you delete key material, you can use `ImportKeyMaterial` to reimport
  the same key material into the CMK.

  The result of this operation varies with the key state of the CMK. For
  details, see [How Key State Affects Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def delete_imported_key_material(client, input, options \\ []) do
    request(client, "DeleteImportedKeyMaterial", input, options)
  end

  @doc """
  Gets information about [custom key
  stores](http://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html)
  in the account and region.

  This operation is part of the [Custom Key Store
  feature](http://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  feature in AWS KMS, which combines the convenience and extensive
  integration of AWS KMS with the isolation and control of a single-tenant
  key store.

  By default, this operation returns information about all custom key stores
  in the account and region. To get only information about a particular
  custom key store, use either the `CustomKeyStoreName` or `CustomKeyStoreId`
  parameter (but not both).

  To determine whether the custom key store is connected to its AWS CloudHSM
  cluster, use the `ConnectionState` element in the response. If an attempt
  to connect the custom key store failed, the `ConnectionState` value is
  `FAILED` and the `ConnectionErrorCode` element in the response indicates
  the cause of the failure. For help interpreting the `ConnectionErrorCode`,
  see `CustomKeyStoresListEntry`.

  Custom key stores have a `DISCONNECTED` connection state if the key store
  has never been connected or you use the `DisconnectCustomKeyStore`
  operation to disconnect it. If your custom key store state is `CONNECTED`
  but you are having trouble using it, make sure that its associated AWS
  CloudHSM cluster is active and contains the minimum number of HSMs required
  for the operation, if any.

  For help repairing your custom key store, see the [Troubleshooting Custom
  Key
  Stores](http://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore-html)
  topic in the *AWS Key Management Service Developer Guide*.
  """
  def describe_custom_key_stores(client, input, options \\ []) do
    request(client, "DescribeCustomKeyStores", input, options)
  end

  @doc """
  Provides detailed information about the specified customer master key
  (CMK).

  If you use `DescribeKey` on a predefined AWS alias, that is, an AWS alias
  with no key ID, AWS KMS associates the alias with an [AWS managed
  CMK](http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys)
  and returns its `KeyId` and `Arn` in the response.

  To perform this operation on a CMK in a different AWS account, specify the
  key ARN or alias ARN in the value of the KeyId parameter.
  """
  def describe_key(client, input, options \\ []) do
    request(client, "DescribeKey", input, options)
  end

  @doc """
  Sets the state of a customer master key (CMK) to disabled, thereby
  preventing its use for cryptographic operations. You cannot perform this
  operation on a CMK in a different AWS account.

  For more information about how key state affects the use of a CMK, see [How
  Key State Affects the Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.

  The result of this operation varies with the key state of the CMK. For
  details, see [How Key State Affects Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def disable_key(client, input, options \\ []) do
    request(client, "DisableKey", input, options)
  end

  @doc """
  Disables [automatic rotation of the key
  material](http://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html)
  for the specified customer master key (CMK). You cannot perform this
  operation on a CMK in a different AWS account.

  The result of this operation varies with the key state of the CMK. For
  details, see [How Key State Affects Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def disable_key_rotation(client, input, options \\ []) do
    request(client, "DisableKeyRotation", input, options)
  end

  @doc """
  Disconnects the [custom key
  store](http://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html)
  from its associated AWS CloudHSM cluster. While a custom key store is
  disconnected, you can manage the custom key store and its customer master
  keys (CMKs), but you cannot create or use CMKs in the custom key store. You
  can reconnect the custom key store at any time.

  <note> While a custom key store is disconnected, all attempts to create
  customer master keys (CMKs) in the custom key store or to use existing CMKs
  in cryptographic operations will fail. This action can prevent users from
  storing and accessing sensitive data.

  </note> <p/> To find the connection state of a custom key store, use the
  `DescribeCustomKeyStores` operation. To reconnect a custom key store, use
  the `ConnectCustomKeyStore` operation.

  If the operation succeeds, it returns a JSON object with no properties.

  This operation is part of the [Custom Key Store
  feature](http://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  feature in AWS KMS, which combines the convenience and extensive
  integration of AWS KMS with the isolation and control of a single-tenant
  key store.
  """
  def disconnect_custom_key_store(client, input, options \\ []) do
    request(client, "DisconnectCustomKeyStore", input, options)
  end

  @doc """
  Sets the key state of a customer master key (CMK) to enabled. This allows
  you to use the CMK for cryptographic operations. You cannot perform this
  operation on a CMK in a different AWS account.

  The result of this operation varies with the key state of the CMK. For
  details, see [How Key State Affects Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def enable_key(client, input, options \\ []) do
    request(client, "EnableKey", input, options)
  end

  @doc """
  Enables [automatic rotation of the key
  material](http://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html)
  for the specified customer master key (CMK). You cannot perform this
  operation on a CMK in a different AWS account.

  You cannot enable automatic rotation of CMKs with imported key material or
  CMKs in a [custom key
  store](http://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html).

  The result of this operation varies with the key state of the CMK. For
  details, see [How Key State Affects Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def enable_key_rotation(client, input, options \\ []) do
    request(client, "EnableKeyRotation", input, options)
  end

  @doc """
  Encrypts plaintext into ciphertext by using a customer master key (CMK).
  The `Encrypt` operation has two primary use cases:

  <ul> <li> You can encrypt up to 4 kilobytes (4096 bytes) of arbitrary data
  such as an RSA key, a database password, or other sensitive information.

  </li> <li> To move encrypted data from one AWS region to another, you can
  use this operation to encrypt in the new region the plaintext data key that
  was used to encrypt the data in the original region. This provides you with
  an encrypted copy of the data key that can be decrypted in the new region
  and used there to decrypt the encrypted data.

  </li> </ul> To perform this operation on a CMK in a different AWS account,
  specify the key ARN or alias ARN in the value of the KeyId parameter.

  Unless you are moving encrypted data from one region to another, you don't
  use this operation to encrypt a generated data key within a region. To get
  data keys that are already encrypted, call the `GenerateDataKey` or
  `GenerateDataKeyWithoutPlaintext` operation. Data keys don't need to be
  encrypted again by calling `Encrypt`.

  To encrypt data locally in your application, use the `GenerateDataKey`
  operation to return a plaintext data encryption key and a copy of the key
  encrypted under the CMK of your choosing.

  The result of this operation varies with the key state of the CMK. For
  details, see [How Key State Affects Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def encrypt(client, input, options \\ []) do
    request(client, "Encrypt", input, options)
  end

  @doc """
  Returns a data encryption key that you can use in your application to
  encrypt data locally.

  You must specify the customer master key (CMK) under which to generate the
  data key. You must also specify the length of the data key using either the
  `KeySpec` or `NumberOfBytes` field. You must specify one field or the
  other, but not both. For common key lengths (128-bit and 256-bit symmetric
  keys), we recommend that you use `KeySpec`. To perform this operation on a
  CMK in a different AWS account, specify the key ARN or alias ARN in the
  value of the KeyId parameter.

  This operation returns a plaintext copy of the data key in the `Plaintext`
  field of the response, and an encrypted copy of the data key in the
  `CiphertextBlob` field. The data key is encrypted under the CMK specified
  in the `KeyId` field of the request.

  We recommend that you use the following pattern to encrypt data locally in
  your application:

  <ol> <li> Use this operation (`GenerateDataKey`) to get a data encryption
  key.

  </li> <li> Use the plaintext data encryption key (returned in the
  `Plaintext` field of the response) to encrypt data locally, then erase the
  plaintext data key from memory.

  </li> <li> Store the encrypted data key (returned in the `CiphertextBlob`
  field of the response) alongside the locally encrypted data.

  </li> </ol> To decrypt data locally:

  <ol> <li> Use the `Decrypt` operation to decrypt the encrypted data key
  into a plaintext copy of the data key.

  </li> <li> Use the plaintext data key to decrypt data locally, then erase
  the plaintext data key from memory.

  </li> </ol> To return only an encrypted copy of the data key, use
  `GenerateDataKeyWithoutPlaintext`. To return a random byte string that is
  cryptographically secure, use `GenerateRandom`.

  If you use the optional `EncryptionContext` field, you must store at least
  enough information to be able to reconstruct the full encryption context
  when you later send the ciphertext to the `Decrypt` operation. It is a good
  practice to choose an encryption context that you can reconstruct on the
  fly to better secure the ciphertext. For more information, see [Encryption
  Context](http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html)
  in the *AWS Key Management Service Developer Guide*.

  The result of this operation varies with the key state of the CMK. For
  details, see [How Key State Affects Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def generate_data_key(client, input, options \\ []) do
    request(client, "GenerateDataKey", input, options)
  end

  @doc """
  Returns a data encryption key encrypted under a customer master key (CMK).
  This operation is identical to `GenerateDataKey` but returns only the
  encrypted copy of the data key.

  To perform this operation on a CMK in a different AWS account, specify the
  key ARN or alias ARN in the value of the KeyId parameter.

  This operation is useful in a system that has multiple components with
  different degrees of trust. For example, consider a system that stores
  encrypted data in containers. Each container stores the encrypted data and
  an encrypted copy of the data key. One component of the system, called the
  *control plane*, creates new containers. When it creates a new container,
  it uses this operation (`GenerateDataKeyWithoutPlaintext`) to get an
  encrypted data key and then stores it in the container. Later, a different
  component of the system, called the *data plane*, puts encrypted data into
  the containers. To do this, it passes the encrypted data key to the
  `Decrypt` operation, then uses the returned plaintext data key to encrypt
  data, and finally stores the encrypted data in the container. In this
  system, the control plane never sees the plaintext data key.

  The result of this operation varies with the key state of the CMK. For
  details, see [How Key State Affects Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def generate_data_key_without_plaintext(client, input, options \\ []) do
    request(client, "GenerateDataKeyWithoutPlaintext", input, options)
  end

  @doc """
  Returns a random byte string that is cryptographically secure.

  By default, the random byte string is generated in AWS KMS. To generate the
  byte string in the AWS CloudHSM cluster that is associated with a [custom
  key
  store](http://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html),
  specify the custom key store ID.

  For more information about entropy and random number generation, see the
  [AWS Key Management Service Cryptographic
  Details](https://d0.awsstatic.com/whitepapers/KMS-Cryptographic-Details.pdf)
  whitepaper.
  """
  def generate_random(client, input, options \\ []) do
    request(client, "GenerateRandom", input, options)
  end

  @doc """
  Gets a key policy attached to the specified customer master key (CMK). You
  cannot perform this operation on a CMK in a different AWS account.
  """
  def get_key_policy(client, input, options \\ []) do
    request(client, "GetKeyPolicy", input, options)
  end

  @doc """
  Gets a Boolean value that indicates whether [automatic rotation of the key
  material](http://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html)
  is enabled for the specified customer master key (CMK).

  The result of this operation varies with the key state of the CMK. For
  details, see [How Key State Affects Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.

  <ul> <li> Disabled: The key rotation status does not change when you
  disable a CMK. However, while the CMK is disabled, AWS KMS does not rotate
  the backing key.

  </li> <li> Pending deletion: While a CMK is pending deletion, its key
  rotation status is `false` and AWS KMS does not rotate the backing key. If
  you cancel the deletion, the original key rotation status is restored.

  </li> </ul> To perform this operation on a CMK in a different AWS account,
  specify the key ARN in the value of the `KeyId` parameter.
  """
  def get_key_rotation_status(client, input, options \\ []) do
    request(client, "GetKeyRotationStatus", input, options)
  end

  @doc """
  Returns the items you need in order to import key material into AWS KMS
  from your existing key management infrastructure. For more information
  about importing key material into AWS KMS, see [Importing Key
  Material](http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
  in the *AWS Key Management Service Developer Guide*.

  You must specify the key ID of the customer master key (CMK) into which you
  will import key material. This CMK's `Origin` must be `EXTERNAL`. You must
  also specify the wrapping algorithm and type of wrapping key (public key)
  that you will use to encrypt the key material. You cannot perform this
  operation on a CMK in a different AWS account.

  This operation returns a public key and an import token. Use the public key
  to encrypt the key material. Store the import token to send with a
  subsequent `ImportKeyMaterial` request. The public key and import token
  from the same response must be used together. These items are valid for 24
  hours. When they expire, they cannot be used for a subsequent
  `ImportKeyMaterial` request. To get new ones, send another
  `GetParametersForImport` request.

  The result of this operation varies with the key state of the CMK. For
  details, see [How Key State Affects Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def get_parameters_for_import(client, input, options \\ []) do
    request(client, "GetParametersForImport", input, options)
  end

  @doc """
  Imports key material into an existing AWS KMS customer master key (CMK)
  that was created without key material. You cannot perform this operation on
  a CMK in a different AWS account. For more information about creating CMKs
  with no key material and then importing key material, see [Importing Key
  Material](http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
  in the *AWS Key Management Service Developer Guide*.

  Before using this operation, call `GetParametersForImport`. Its response
  includes a public key and an import token. Use the public key to encrypt
  the key material. Then, submit the import token from the same
  `GetParametersForImport` response.

  When calling this operation, you must specify the following values:

  <ul> <li> The key ID or key ARN of a CMK with no key material. Its `Origin`
  must be `EXTERNAL`.

  To create a CMK with no key material, call `CreateKey` and set the value of
  its `Origin` parameter to `EXTERNAL`. To get the `Origin` of a CMK, call
  `DescribeKey`.)

  </li> <li> The encrypted key material. To get the public key to encrypt the
  key material, call `GetParametersForImport`.

  </li> <li> The import token that `GetParametersForImport` returned. This
  token and the public key used to encrypt the key material must have come
  from the same response.

  </li> <li> Whether the key material expires and if so, when. If you set an
  expiration date, you can change it only by reimporting the same key
  material and specifying a new expiration date. If the key material expires,
  AWS KMS deletes the key material and the CMK becomes unusable. To use the
  CMK again, you must reimport the same key material.

  </li> </ul> When this operation is successful, the key state of the CMK
  changes from `PendingImport` to `Enabled`, and you can use the CMK. After
  you successfully import key material into a CMK, you can reimport the same
  key material into that CMK, but you cannot import different key material.

  The result of this operation varies with the key state of the CMK. For
  details, see [How Key State Affects Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def import_key_material(client, input, options \\ []) do
    request(client, "ImportKeyMaterial", input, options)
  end

  @doc """
  Gets a list of all aliases in the caller's AWS account and region. You
  cannot list aliases in other accounts. For more information about aliases,
  see `CreateAlias`.

  By default, the `ListAliases` command returns all aliases in the account
  and region. To get only the aliases that point to a particular customer
  master key (CMK), use the `KeyId` parameter.

  The `ListAliases` response might include several aliases have no
  `TargetKeyId` field. These are predefined aliases that AWS has created but
  has not yet associated with a CMK. Aliases that AWS creates in your
  account, including predefined aliases, do not count against your [AWS KMS
  aliases
  limit](http://docs.aws.amazon.com/kms/latest/developerguide/limits.html#aliases-limit).
  """
  def list_aliases(client, input, options \\ []) do
    request(client, "ListAliases", input, options)
  end

  @doc """
  Gets a list of all grants for the specified customer master key (CMK).

  To perform this operation on a CMK in a different AWS account, specify the
  key ARN in the value of the `KeyId` parameter.
  """
  def list_grants(client, input, options \\ []) do
    request(client, "ListGrants", input, options)
  end

  @doc """
  Gets the names of the key policies that are attached to a customer master
  key (CMK). This operation is designed to get policy names that you can use
  in a `GetKeyPolicy` operation. However, the only valid policy name is
  `default`. You cannot perform this operation on a CMK in a different AWS
  account.
  """
  def list_key_policies(client, input, options \\ []) do
    request(client, "ListKeyPolicies", input, options)
  end

  @doc """
  Gets a list of all customer master keys (CMKs) in the caller's AWS account
  and region.
  """
  def list_keys(client, input, options \\ []) do
    request(client, "ListKeys", input, options)
  end

  @doc """
  Returns a list of all tags for the specified customer master key (CMK).

  You cannot perform this operation on a CMK in a different AWS account.
  """
  def list_resource_tags(client, input, options \\ []) do
    request(client, "ListResourceTags", input, options)
  end

  @doc """
  Returns a list of all grants for which the grant's `RetiringPrincipal`
  matches the one specified.

  A typical use is to list all grants that you are able to retire. To retire
  a grant, use `RetireGrant`.
  """
  def list_retirable_grants(client, input, options \\ []) do
    request(client, "ListRetirableGrants", input, options)
  end

  @doc """
  Attaches a key policy to the specified customer master key (CMK). You
  cannot perform this operation on a CMK in a different AWS account.

  For more information about key policies, see [Key
  Policies](http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def put_key_policy(client, input, options \\ []) do
    request(client, "PutKeyPolicy", input, options)
  end

  @doc """
  Encrypts data on the server side with a new customer master key (CMK)
  without exposing the plaintext of the data on the client side. The data is
  first decrypted and then reencrypted. You can also use this operation to
  change the encryption context of a ciphertext.

  You can reencrypt data using CMKs in different AWS accounts.

  Unlike other operations, `ReEncrypt` is authorized twice, once as
  `ReEncryptFrom` on the source CMK and once as `ReEncryptTo` on the
  destination CMK. We recommend that you include the `"kms:ReEncrypt*"`
  permission in your [key
  policies](http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html)
  to permit reencryption from or to the CMK. This permission is automatically
  included in the key policy when you create a CMK through the console, but
  you must include it manually when you create a CMK programmatically or when
  you set a key policy with the `PutKeyPolicy` operation.

  The result of this operation varies with the key state of the CMK. For
  details, see [How Key State Affects Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def re_encrypt(client, input, options \\ []) do
    request(client, "ReEncrypt", input, options)
  end

  @doc """
  Retires a grant. To clean up, you can retire a grant when you're done using
  it. You should revoke a grant when you intend to actively deny operations
  that depend on it. The following are permitted to call this API:

  <ul> <li> The AWS account (root user) under which the grant was created

  </li> <li> The `RetiringPrincipal`, if present in the grant

  </li> <li> The `GranteePrincipal`, if `RetireGrant` is an operation
  specified in the grant

  </li> </ul> You must identify the grant to retire by its grant token or by
  a combination of the grant ID and the Amazon Resource Name (ARN) of the
  customer master key (CMK). A grant token is a unique variable-length
  base64-encoded string. A grant ID is a 64 character unique identifier of a
  grant. The `CreateGrant` operation returns both.
  """
  def retire_grant(client, input, options \\ []) do
    request(client, "RetireGrant", input, options)
  end

  @doc """
  Revokes the specified grant for the specified customer master key (CMK).
  You can revoke a grant to actively deny operations that depend on it.

  To perform this operation on a CMK in a different AWS account, specify the
  key ARN in the value of the `KeyId` parameter.
  """
  def revoke_grant(client, input, options \\ []) do
    request(client, "RevokeGrant", input, options)
  end

  @doc """
  Schedules the deletion of a customer master key (CMK). You may provide a
  waiting period, specified in days, before deletion occurs. If you do not
  provide a waiting period, the default period of 30 days is used. When this
  operation is successful, the key state of the CMK changes to
  `PendingDeletion`. Before the waiting period ends, you can use
  `CancelKeyDeletion` to cancel the deletion of the CMK. After the waiting
  period ends, AWS KMS deletes the CMK and all AWS KMS data associated with
  it, including all aliases that refer to it.

  <important> Deleting a CMK is a destructive and potentially dangerous
  operation. When a CMK is deleted, all data that was encrypted under the CMK
  is unrecoverable. To prevent the use of a CMK without deleting it, use
  `DisableKey`.

  </important> If you schedule deletion of a CMK from a [custom key
  store](http://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html),
  when the waiting period expires, `ScheduleKeyDeletion` deletes the CMK from
  AWS KMS. Then AWS KMS makes a best effort to delete the key material from
  the associated AWS CloudHSM cluster. However, you might need to manually
  [delete the orphaned key
  material](http://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key)
  from the cluster and its backups.

  You cannot perform this operation on a CMK in a different AWS account.

  For more information about scheduling a CMK for deletion, see [Deleting
  Customer Master
  Keys](http://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html)
  in the *AWS Key Management Service Developer Guide*.

  The result of this operation varies with the key state of the CMK. For
  details, see [How Key State Affects Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def schedule_key_deletion(client, input, options \\ []) do
    request(client, "ScheduleKeyDeletion", input, options)
  end

  @doc """
  Adds or edits tags for a customer master key (CMK). You cannot perform this
  operation on a CMK in a different AWS account.

  Each tag consists of a tag key and a tag value. Tag keys and tag values are
  both required, but tag values can be empty (null) strings.

  You can only use a tag key once for each CMK. If you use the tag key again,
  AWS KMS replaces the current tag value with the specified value.

  For information about the rules that apply to tag keys and tag values, see
  [User-Defined Tag
  Restrictions](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html)
  in the *AWS Billing and Cost Management User Guide*.

  The result of this operation varies with the key state of the CMK. For
  details, see [How Key State Affects Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes the specified tags from the specified customer master key (CMK).
  You cannot perform this operation on a CMK in a different AWS account.

  To remove a tag, specify the tag key. To change the tag value of an
  existing tag key, use `TagResource`.

  The result of this operation varies with the key state of the CMK. For
  details, see [How Key State Affects Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Associates an existing alias with a different customer master key (CMK).
  Each CMK can have multiple aliases, but the aliases must be unique within
  the account and region. You cannot perform this operation on an alias in a
  different AWS account.

  This operation works only on existing aliases. To change the alias of a CMK
  to a new value, use `CreateAlias` to create a new alias and `DeleteAlias`
  to delete the old alias.

  Because an alias is not a property of a CMK, you can create, update, and
  delete the aliases of a CMK without affecting the CMK. Also, aliases do not
  appear in the response from the `DescribeKey` operation. To get the aliases
  of all CMKs in the account, use the `ListAliases` operation.

  An alias name can contain only alphanumeric characters, forward slashes
  (/), underscores (_), and dashes (-). An alias must start with the word
  `alias` followed by a forward slash (`alias/`). The alias name can contain
  only alphanumeric characters, forward slashes (/), underscores (_), and
  dashes (-). Alias names cannot begin with `aws`; that alias name prefix is
  reserved by Amazon Web Services (AWS).

  The result of this operation varies with the key state of the CMK. For
  details, see [How Key State Affects Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def update_alias(client, input, options \\ []) do
    request(client, "UpdateAlias", input, options)
  end

  @doc """
  Changes the properties of a custom key store. Use the `CustomKeyStoreId`
  parameter to identify the custom key store you want to edit. Use the
  remaining parameters to change the properties of the custom key store.

  You can only update a custom key store that is disconnected. To disconnect
  the custom key store, use `DisconnectCustomKeyStore`. To reconnect the
  custom key store after the update completes, use `ConnectCustomKeyStore`.
  To find the connection state of a custom key store, use the
  `DescribeCustomKeyStores` operation.

  Use the `NewCustomKeyStoreName` parameter to change the friendly name of
  the custom key store to the value that you specify.

  Use the `KeyStorePassword` parameter tell AWS KMS the current password of
  the [ `kmsuser` crypto user
  (CU)](http://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser)
  in the associated AWS CloudHSM cluster. You can use this parameter to fix
  connection failures that occur when AWS KMS cannot log into the associated
  cluster because the `kmsuser` password has changed. This value does not
  change the password in the AWS CloudHSM cluster.

  Use the `CloudHsmClusterId` parameter to associate the custom key store
  with a related AWS CloudHSM cluster, that is, a cluster that shares a
  backup history with the original cluster. You can use this parameter to
  repair a custom key store if its AWS CloudHSM cluster becomes corrupted or
  is deleted, or when you need to create or restore a cluster from a backup.

  The cluster ID must identify a AWS CloudHSM cluster with the following
  requirements.

  <ul> <li> The cluster must be active and be in the same AWS account and
  Region as the custom key store.

  </li> <li> The cluster must have the same cluster certificate as the
  original cluster. You cannot use this parameter to associate the custom key
  store with an unrelated cluster. To view the cluster certificate, use the
  AWS CloudHSM
  [DescribeClusters](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html)
  operation. Clusters that share a backup history have the same cluster
  certificate.

  </li> <li> The cluster must be configured with subnets in at least two
  different Availability Zones in the Region. Because AWS CloudHSM is not
  supported in all Availability Zones, we recommend that the cluster have
  subnets in all Availability Zones in the Region.

  </li> <li> The cluster must contain at least two active HSMs, each in a
  different Availability Zone.

  </li> </ul> If the operation succeeds, it returns a JSON object with no
  properties.

  This operation is part of the [Custom Key Store
  feature](http://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
  feature in AWS KMS, which combines the convenience and extensive
  integration of AWS KMS with the isolation and control of a single-tenant
  key store.
  """
  def update_custom_key_store(client, input, options \\ []) do
    request(client, "UpdateCustomKeyStore", input, options)
  end

  @doc """
  Updates the description of a customer master key (CMK). To see the
  decription of a CMK, use `DescribeKey`.

  You cannot perform this operation on a CMK in a different AWS account.

  The result of this operation varies with the key state of the CMK. For
  details, see [How Key State Affects Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def update_key_description(client, input, options \\ []) do
    request(client, "UpdateKeyDescription", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "kms"}
    host = get_host("kms", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "TrentService.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
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

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

end
