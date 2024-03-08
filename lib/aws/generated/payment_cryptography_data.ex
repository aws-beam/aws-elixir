# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PaymentCryptographyData do
  @moduledoc """
  You use the Amazon Web Services Payment Cryptography Data Plane to manage how
  encryption keys are used for payment-related transaction processing and
  associated cryptographic operations.

  You can encrypt, decrypt, generate, verify, and translate payment-related
  cryptographic operations in Amazon Web Services Payment Cryptography. For more
  information, see [Data operations](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/data-operations.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  To manage your encryption keys, you use the [Amazon Web Services Payment Cryptography Control
  Plane](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/Welcome.html).
  You can create, import, export, share, manage, and delete keys. You can also
  manage Identity and Access Management (IAM) policies for keys.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2022-02-03",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "dataplane.payment-cryptography",
      global?: false,
      protocol: "rest-json",
      service_id: "Payment Cryptography Data",
      signature_version: "v4",
      signing_name: "payment-cryptography",
      target_prefix: nil
    }
  end

  @doc """
  Decrypts ciphertext data to plaintext using a symmetric (TDES, AES), asymmetric
  (RSA), or derived (DUKPT or EMV) encryption key scheme.

  For more information, see [Decrypt data](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/decrypt-data.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  You can use an encryption key generated within Amazon Web Services Payment
  Cryptography, or you can import your own encryption key by calling
  [ImportKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html). For this operation, the key must have `KeyModesOfUse` set to `Decrypt`. In
  asymmetric decryption, Amazon Web Services Payment Cryptography decrypts the
  ciphertext using the private component of the asymmetric encryption key pair.
  For data encryption outside of Amazon Web Services Payment Cryptography, you can
  export the public component of the asymmetric key pair by calling
  [GetPublicCertificate](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html).

  For symmetric and DUKPT decryption, Amazon Web Services Payment Cryptography
  supports `TDES` and `AES` algorithms. For EMV decryption, Amazon Web Services
  Payment Cryptography supports `TDES` algorithms. For asymmetric decryption,
  Amazon Web Services Payment Cryptography supports `RSA`.

  When you use TDES or TDES DUKPT, the ciphertext data length must be a multiple
  of 8 bytes. For AES or AES DUKPT, the ciphertext data length must be a multiple
  of 16 bytes. For RSA, it sould be equal to the key size unless padding is
  enabled.

  For information about valid keys for this operation, see [Understanding key attributes](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
  and [Key types for specific data operations](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  **Cross-account use**: This operation can't be used across different Amazon Web
  Services accounts.

  ## Related operations:

    * `EncryptData`

    *
  [GetPublicCertificate](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html)     *
  [ImportKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html)
  """
  def decrypt_data(%Client{} = client, key_identifier, input, options \\ []) do
    url_path = "/keys/#{AWS.Util.encode_uri(key_identifier)}/decrypt"
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
  Encrypts plaintext data to ciphertext using a symmetric (TDES, AES), asymmetric
  (RSA), or derived (DUKPT or EMV) encryption key scheme.

  For more information, see [Encrypt data](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/encrypt-data.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  You can generate an encryption key within Amazon Web Services Payment
  Cryptography by calling
  [CreateKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html). You can import your own encryption key by calling
  [ImportKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html).
  For this operation, the key must have `KeyModesOfUse` set to `Encrypt`. In
  asymmetric encryption, plaintext is encrypted using public component. You can
  import the public component of an asymmetric key pair created outside Amazon Web
  Services Payment Cryptography by calling
  [ImportKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html).  For symmetric and DUKPT encryption, Amazon Web Services Payment Cryptography
  supports `TDES` and `AES` algorithms. For EMV encryption, Amazon Web Services
  Payment Cryptography supports `TDES` algorithms.For asymmetric encryption,
  Amazon Web Services Payment Cryptography supports `RSA`.

  When you use TDES or TDES DUKPT, the plaintext data length must be a multiple of
  8 bytes. For AES or AES DUKPT, the plaintext data length must be a multiple of
  16 bytes. For RSA, it sould be equal to the key size unless padding is enabled.

  To encrypt using DUKPT, you must already have a BDK (Base Derivation Key) key in
  your account with `KeyModesOfUse` set to `DeriveKey`, or you can generate a new
  DUKPT key by calling
  [CreateKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html).
  To encrypt using EMV, you must already have an IMK (Issuer Master Key) key in
  your account with `KeyModesOfUse` set to `DeriveKey`.

  For information about valid keys for this operation, see [Understanding key attributes](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
  and [Key types for specific data operations](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  **Cross-account use**: This operation can't be used across different Amazon Web
  Services accounts.

  ## Related operations:

    * `DecryptData`

    *
  [GetPublicCertificate](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html)     *
  [ImportKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html)

    * `ReEncryptData`
  """
  def encrypt_data(%Client{} = client, key_identifier, input, options \\ []) do
    url_path = "/keys/#{AWS.Util.encode_uri(key_identifier)}/encrypt"
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
  Generates card-related validation data using algorithms such as Card
  Verification Values (CVV/CVV2), Dynamic Card Verification Values (dCVV/dCVV2),
  or Card Security Codes (CSC).

  For more information, see [Generate card data](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/generate-card-data.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  This operation generates a CVV or CSC value that is printed on a payment credit
  or debit card during card production. The CVV or CSC, PAN (Primary Account
  Number) and expiration date of the card are required to check its validity
  during transaction processing. To begin this operation, a CVK (Card Verification
  Key) encryption key is required. You can use
  [CreateKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html) or
  [ImportKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html)
  to establish a CVK within Amazon Web Services Payment Cryptography. The
  `KeyModesOfUse` should be set to `Generate` and `Verify` for a CVK encryption
  key.

  For information about valid keys for this operation, see [Understanding key attributes](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
  and [Key types for specific data operations](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  **Cross-account use**: This operation can't be used across different Amazon Web
  Services accounts.

  ## Related operations:

    *
  [ImportKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html)

    * `VerifyCardValidationData`
  """
  def generate_card_validation_data(%Client{} = client, input, options \\ []) do
    url_path = "/cardvalidationdata/generate"
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
  Generates a Message Authentication Code (MAC) cryptogram within Amazon Web
  Services Payment Cryptography.

  You can use this operation to authenticate card-related data by using known data
  values to generate MAC for data validation between the sending and receiving
  parties. This operation uses message data, a secret encryption key and MAC
  algorithm to generate a unique MAC value for transmission. The receiving party
  of the MAC must use the same message data, secret encryption key and MAC
  algorithm to reproduce another MAC value for comparision.

  You can use this operation to generate a DUPKT, CMAC, HMAC or EMV MAC by setting
  generation attributes and algorithm to the associated values. The MAC generation
  encryption key must have valid values for `KeyUsage` such as `TR31_M7_HMAC_KEY`
  for HMAC generation, and they key must have `KeyModesOfUse` set to `Generate`
  and `Verify`.

  For information about valid keys for this operation, see [Understanding key attributes](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
  and [Key types for specific data operations](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  **Cross-account use**: This operation can't be used across different Amazon Web
  Services accounts.

  ## Related operations:

    * `VerifyMac`
  """
  def generate_mac(%Client{} = client, input, options \\ []) do
    url_path = "/mac/generate"
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
  Generates pin-related data such as PIN, PIN Verification Value (PVV), PIN Block,
  and PIN Offset during new card issuance or reissuance.

  For more information, see [Generate PIN data](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/generate-pin-data.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  PIN data is never transmitted in clear to or from Amazon Web Services Payment
  Cryptography. This operation generates PIN, PVV, or PIN Offset and then encrypts
  it using Pin Encryption Key (PEK) to create an `EncryptedPinBlock` for
  transmission from Amazon Web Services Payment Cryptography. This operation uses
  a separate Pin Verification Key (PVK) for VISA PVV generation.

  For information about valid keys for this operation, see [Understanding key attributes](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
  and [Key types for specific data operations](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  **Cross-account use**: This operation can't be used across different Amazon Web
  Services accounts.

  ## Related operations:

    * `GenerateCardValidationData`

    * `TranslatePinData`

    * `VerifyPinData`
  """
  def generate_pin_data(%Client{} = client, input, options \\ []) do
    url_path = "/pindata/generate"
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
  Re-encrypt ciphertext using DUKPT, Symmetric and Asymmetric Data Encryption
  Keys.

  You can either generate an encryption key within Amazon Web Services Payment
  Cryptography by calling
  [CreateKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html) or import your own encryption key by calling
  [ImportKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html).
  The `KeyArn` for use with this operation must be in a compatible key state with
  `KeyModesOfUse` set to `Encrypt`. In asymmetric encryption, ciphertext is
  encrypted using public component (imported by calling
  [ImportKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html)) of the asymmetric key pair created outside of Amazon Web Services Payment
  Cryptography.

  For symmetric and DUKPT encryption, Amazon Web Services Payment Cryptography
  supports `TDES` and `AES` algorithms. For asymmetric encryption, Amazon Web
  Services Payment Cryptography supports `RSA`. To encrypt using DUKPT, a DUKPT
  key must already exist within your account with `KeyModesOfUse` set to
  `DeriveKey` or a new DUKPT can be generated by calling
  [CreateKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html).

  For information about valid keys for this operation, see [Understanding key attributes](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
  and [Key types for specific data operations](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  **Cross-account use**: This operation can't be used across different Amazon Web
  Services accounts.

  ## Related operations:

    * `DecryptData`

    * `EncryptData`

    *
  [GetPublicCertificate](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html)     *
  [ImportKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html)
  """
  def re_encrypt_data(%Client{} = client, incoming_key_identifier, input, options \\ []) do
    url_path = "/keys/#{AWS.Util.encode_uri(incoming_key_identifier)}/reencrypt"
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
  Translates encrypted PIN block from and to ISO 9564 formats 0,1,3,4.

  For more information, see [Translate PIN data](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/translate-pin-data.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  PIN block translation involves changing the encrytion of PIN block from one
  encryption key to another encryption key and changing PIN block format from one
  to another without PIN block data leaving Amazon Web Services Payment
  Cryptography. The encryption key transformation can be from PEK (Pin Encryption
  Key) to BDK (Base Derivation Key) for DUKPT or from BDK for DUKPT to PEK. Amazon
  Web Services Payment Cryptography supports `TDES` and `AES` key derivation type
  for DUKPT translations.

  The allowed combinations of PIN block format translations are guided by PCI. It
  is important to note that not all encrypted PIN block formats (example, format
  1) require PAN (Primary Account Number) as input. And as such, PIN block format
  that requires PAN (example, formats 0,3,4) cannot be translated to a format
  (format 1) that does not require a PAN for generation.

  For information about valid keys for this operation, see [Understanding key attributes](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
  and [Key types for specific data operations](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  Amazon Web Services Payment Cryptography currently supports ISO PIN block 4
  translation for PIN block built using legacy PAN length. That is, PAN is the
  right most 12 digits excluding the check digits.

  **Cross-account use**: This operation can't be used across different Amazon Web
  Services accounts.

  ## Related operations:

    * `GeneratePinData`

    * `VerifyPinData`
  """
  def translate_pin_data(%Client{} = client, input, options \\ []) do
    url_path = "/pindata/translate"
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
  Verifies Authorization Request Cryptogram (ARQC) for a EMV chip payment card
  authorization.

  For more information, see [Verify auth request cryptogram](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/data-operations.verifyauthrequestcryptogram.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  ARQC generation is done outside of Amazon Web Services Payment Cryptography and
  is typically generated on a point of sale terminal for an EMV chip card to
  obtain payment authorization during transaction time. For ARQC verification, you
  must first import the ARQC generated outside of Amazon Web Services Payment
  Cryptography by calling
  [ImportKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html). This operation uses the imported ARQC and an major encryption key (DUKPT)
  created by calling
  [CreateKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html)
  to either provide a boolean ARQC verification result or provide an APRC
  (Authorization Response Cryptogram) response using Method 1 or Method 2. The
  `ARPC_METHOD_1` uses `AuthResponseCode` to generate ARPC and `ARPC_METHOD_2`
  uses `CardStatusUpdate` to generate ARPC.

  For information about valid keys for this operation, see [Understanding key attributes](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
  and [Key types for specific data operations](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  **Cross-account use**: This operation can't be used across different Amazon Web
  Services accounts.

  ## Related operations:

    * `VerifyCardValidationData`

    * `VerifyPinData`
  """
  def verify_auth_request_cryptogram(%Client{} = client, input, options \\ []) do
    url_path = "/cryptogram/verify"
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
  Verifies card-related validation data using algorithms such as Card Verification
  Values (CVV/CVV2), Dynamic Card Verification Values (dCVV/dCVV2) and Card
  Security Codes (CSC).

  For more information, see [Verify card data](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/verify-card-data.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  This operation validates the CVV or CSC codes that is printed on a payment
  credit or debit card during card payment transaction. The input values are
  typically provided as part of an inbound transaction to an issuer or supporting
  platform partner. Amazon Web Services Payment Cryptography uses CVV or CSC, PAN
  (Primary Account Number) and expiration date of the card to check its validity
  during transaction processing. In this operation, the CVK (Card Verification
  Key) encryption key for use with card data verification is same as the one in
  used for `GenerateCardValidationData`.

  For information about valid keys for this operation, see [Understanding key attributes](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
  and [Key types for specific data operations](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  **Cross-account use**: This operation can't be used across different Amazon Web
  Services accounts.

  ## Related operations:

    * `GenerateCardValidationData`

    * `VerifyAuthRequestCryptogram`

    * `VerifyPinData`
  """
  def verify_card_validation_data(%Client{} = client, input, options \\ []) do
    url_path = "/cardvalidationdata/verify"
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
  Verifies a Message Authentication Code (MAC).

  You can use this operation to verify MAC for message data authentication such as
  . In this operation, you must use the same message data, secret encryption key
  and MAC algorithm that was used to generate MAC. You can use this operation to
  verify a DUPKT, CMAC, HMAC or EMV MAC by setting generation attributes and
  algorithm to the associated values.

  For information about valid keys for this operation, see [Understanding key attributes](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
  and [Key types for specific data operations](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  **Cross-account use**: This operation can't be used across different Amazon Web
  Services accounts.

  ## Related operations:

    * `GenerateMac`
  """
  def verify_mac(%Client{} = client, input, options \\ []) do
    url_path = "/mac/verify"
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
  Verifies pin-related data such as PIN and PIN Offset using algorithms including
  VISA PVV and IBM3624.

  For more information, see [Verify PIN data](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/verify-pin-data.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  This operation verifies PIN data for user payment card. A card holder PIN data
  is never transmitted in clear to or from Amazon Web Services Payment
  Cryptography. This operation uses PIN Verification Key (PVK) for PIN or PIN
  Offset generation and then encrypts it using PIN Encryption Key (PEK) to create
  an `EncryptedPinBlock` for transmission from Amazon Web Services Payment
  Cryptography.

  For information about valid keys for this operation, see [Understanding key attributes](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
  and [Key types for specific data operations](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/crypto-ops-validkeys-ops.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  **Cross-account use**: This operation can't be used across different Amazon Web
  Services accounts.

  ## Related operations:

    * `GeneratePinData`

    * `TranslatePinData`
  """
  def verify_pin_data(%Client{} = client, input, options \\ []) do
    url_path = "/pindata/verify"
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
end
