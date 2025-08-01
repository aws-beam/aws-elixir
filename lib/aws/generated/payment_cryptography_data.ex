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

  @typedoc """

  ## Example:

      session_key_amex() :: %{
        "PanSequenceNumber" => String.t() | Atom.t(),
        "PrimaryAccountNumber" => String.t() | Atom.t()
      }

  """
  @type session_key_amex() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      amex_card_security_code_version1() :: %{
        "CardExpiryDate" => String.t() | Atom.t()
      }

  """
  @type amex_card_security_code_version1() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      asymmetric_encryption_attributes() :: %{
        "PaddingType" => list(any())
      }

  """
  @type asymmetric_encryption_attributes() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      discover_dynamic_card_verification_code() :: %{
        "ApplicationTransactionCounter" => String.t() | Atom.t(),
        "CardExpiryDate" => String.t() | Atom.t(),
        "UnpredictableNumber" => String.t() | Atom.t()
      }

  """
  @type discover_dynamic_card_verification_code() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      current_pin_attributes() :: %{
        "CurrentEncryptedPinBlock" => String.t() | Atom.t(),
        "CurrentPinPekIdentifier" => String.t() | Atom.t()
      }

  """
  @type current_pin_attributes() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      visa_pin_verification_value() :: %{
        "EncryptedPinBlock" => String.t() | Atom.t(),
        "PinVerificationKeyIndex" => integer()
      }

  """
  @type visa_pin_verification_value() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ibm3624_pin_offset() :: %{
        "DecimalizationTable" => String.t() | Atom.t(),
        "EncryptedPinBlock" => String.t() | Atom.t(),
        "PinValidationData" => String.t() | Atom.t(),
        "PinValidationDataPadCharacter" => String.t() | Atom.t()
      }

  """
  @type ibm3624_pin_offset() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      translation_pin_data_iso_format034() :: %{
        "PrimaryAccountNumber" => String.t() | Atom.t()
      }

  """
  @type translation_pin_data_iso_format034() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      translate_pin_data_input() :: %{
        optional("IncomingDukptAttributes") => dukpt_derivation_attributes(),
        optional("IncomingWrappedKey") => wrapped_key(),
        optional("OutgoingDukptAttributes") => dukpt_derivation_attributes(),
        optional("OutgoingWrappedKey") => wrapped_key(),
        required("EncryptedPinBlock") => String.t() | Atom.t(),
        required("IncomingKeyIdentifier") => String.t() | Atom.t(),
        required("IncomingTranslationAttributes") => list(),
        required("OutgoingKeyIdentifier") => String.t() | Atom.t(),
        required("OutgoingTranslationAttributes") => list()
      }

  """
  @type translate_pin_data_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      encrypt_data_output() :: %{
        "CipherText" => String.t() | Atom.t(),
        "KeyArn" => String.t() | Atom.t(),
        "KeyCheckValue" => String.t() | Atom.t()
      }

  """
  @type encrypt_data_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      verify_mac_output() :: %{
        "KeyArn" => String.t() | Atom.t(),
        "KeyCheckValue" => String.t() | Atom.t()
      }

  """
  @type verify_mac_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      visa_attributes() :: %{
        "ApplicationTransactionCounter" => String.t() | Atom.t(),
        "AuthorizationRequestKeyIdentifier" => String.t() | Atom.t(),
        "CurrentPinAttributes" => current_pin_attributes(),
        "MajorKeyDerivationMode" => list(any()),
        "PanSequenceNumber" => String.t() | Atom.t(),
        "PrimaryAccountNumber" => String.t() | Atom.t()
      }

  """
  @type visa_attributes() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cryptogram_verification_arpc_method1() :: %{
        "AuthResponseCode" => String.t() | Atom.t()
      }

  """
  @type cryptogram_verification_arpc_method1() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      dynamic_card_verification_value() :: %{
        "ApplicationTransactionCounter" => String.t() | Atom.t(),
        "CardExpiryDate" => String.t() | Atom.t(),
        "PanSequenceNumber" => String.t() | Atom.t(),
        "ServiceCode" => String.t() | Atom.t()
      }

  """
  @type dynamic_card_verification_value() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      wrapped_key() :: %{
        "KeyCheckValueAlgorithm" => String.t() | Atom.t(),
        "WrappedKeyMaterial" => list()
      }

  """
  @type wrapped_key() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      card_holder_verification_value() :: %{
        "ApplicationTransactionCounter" => String.t() | Atom.t(),
        "PanSequenceNumber" => String.t() | Atom.t(),
        "UnpredictableNumber" => String.t() | Atom.t()
      }

  """
  @type card_holder_verification_value() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      mac_algorithm_dukpt() :: %{
        "DukptDerivationType" => list(any()),
        "DukptKeyVariant" => list(any()),
        "KeySerialNumber" => String.t() | Atom.t()
      }

  """
  @type mac_algorithm_dukpt() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ecdh_derivation_attributes() :: %{
        "CertificateAuthorityPublicKeyIdentifier" => String.t() | Atom.t(),
        "KeyAlgorithm" => list(any()),
        "KeyDerivationFunction" => list(any()),
        "KeyDerivationHashAlgorithm" => list(any()),
        "PublicKeyCertificate" => String.t() | Atom.t(),
        "SharedInformation" => String.t() | Atom.t()
      }

  """
  @type ecdh_derivation_attributes() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      amex_attributes() :: %{
        "ApplicationTransactionCounter" => String.t() | Atom.t(),
        "AuthorizationRequestKeyIdentifier" => String.t() | Atom.t(),
        "CurrentPinAttributes" => current_pin_attributes(),
        "MajorKeyDerivationMode" => list(any()),
        "PanSequenceNumber" => String.t() | Atom.t(),
        "PrimaryAccountNumber" => String.t() | Atom.t()
      }

  """
  @type amex_attributes() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cryptogram_verification_arpc_method2() :: %{
        "CardStatusUpdate" => String.t() | Atom.t(),
        "ProprietaryAuthenticationData" => String.t() | Atom.t()
      }

  """
  @type cryptogram_verification_arpc_method2() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      verify_card_validation_data_input() :: %{
        required("KeyIdentifier") => String.t() | Atom.t(),
        required("PrimaryAccountNumber") => String.t() | Atom.t(),
        required("ValidationData") => String.t() | Atom.t(),
        required("VerificationAttributes") => list()
      }

  """
  @type verify_card_validation_data_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      amex_card_security_code_version2() :: %{
        "CardExpiryDate" => String.t() | Atom.t(),
        "ServiceCode" => String.t() | Atom.t()
      }

  """
  @type amex_card_security_code_version2() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "ResourceId" => [String.t() | Atom.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      encrypt_data_input() :: %{
        optional("WrappedKey") => wrapped_key(),
        required("EncryptionAttributes") => list(),
        required("PlainText") => String.t() | Atom.t()
      }

  """
  @type encrypt_data_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      dynamic_card_verification_code() :: %{
        "ApplicationTransactionCounter" => String.t() | Atom.t(),
        "PanSequenceNumber" => String.t() | Atom.t(),
        "TrackData" => String.t() | Atom.t(),
        "UnpredictableNumber" => String.t() | Atom.t()
      }

  """
  @type dynamic_card_verification_code() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      dukpt_attributes() :: %{
        "DukptDerivationType" => list(any()),
        "KeySerialNumber" => String.t() | Atom.t()
      }

  """
  @type dukpt_attributes() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      emv_encryption_attributes() :: %{
        "InitializationVector" => String.t() | Atom.t(),
        "MajorKeyDerivationMode" => list(any()),
        "Mode" => list(any()),
        "PanSequenceNumber" => String.t() | Atom.t(),
        "PrimaryAccountNumber" => String.t() | Atom.t(),
        "SessionDerivationData" => String.t() | Atom.t()
      }

  """
  @type emv_encryption_attributes() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      verify_mac_input() :: %{
        optional("MacLength") => integer(),
        required("KeyIdentifier") => String.t() | Atom.t(),
        required("Mac") => String.t() | Atom.t(),
        required("MessageData") => String.t() | Atom.t(),
        required("VerificationAttributes") => list()
      }

  """
  @type verify_mac_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      generate_pin_data_input() :: %{
        optional("EncryptionWrappedKey") => wrapped_key(),
        optional("PinDataLength") => integer(),
        required("EncryptionKeyIdentifier") => String.t() | Atom.t(),
        required("GenerationAttributes") => list(),
        required("GenerationKeyIdentifier") => String.t() | Atom.t(),
        required("PinBlockFormat") => list(any()),
        required("PrimaryAccountNumber") => String.t() | Atom.t()
      }

  """
  @type generate_pin_data_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      generate_mac_input() :: %{
        optional("MacLength") => integer(),
        required("GenerationAttributes") => list(),
        required("KeyIdentifier") => String.t() | Atom.t(),
        required("MessageData") => String.t() | Atom.t()
      }

  """
  @type generate_mac_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      card_verification_value2() :: %{
        "CardExpiryDate" => String.t() | Atom.t()
      }

  """
  @type card_verification_value2() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      verify_auth_request_cryptogram_output() :: %{
        "AuthResponseValue" => String.t() | Atom.t(),
        "KeyArn" => String.t() | Atom.t(),
        "KeyCheckValue" => String.t() | Atom.t()
      }

  """
  @type verify_auth_request_cryptogram_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      visa_pin() :: %{
        "PinVerificationKeyIndex" => integer()
      }

  """
  @type visa_pin() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      mac_algorithm_emv() :: %{
        "MajorKeyDerivationMode" => list(any()),
        "PanSequenceNumber" => String.t() | Atom.t(),
        "PrimaryAccountNumber" => String.t() | Atom.t(),
        "SessionKeyDerivationMode" => list(any()),
        "SessionKeyDerivationValue" => list()
      }

  """
  @type mac_algorithm_emv() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t() | Atom.t()],
        "path" => [String.t() | Atom.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      generate_mac_emv_pin_change_input() :: %{
        required("DerivationMethodAttributes") => list(),
        required("MessageData") => String.t() | Atom.t(),
        required("NewEncryptedPinBlock") => String.t() | Atom.t(),
        required("NewPinPekIdentifier") => String.t() | Atom.t(),
        required("PinBlockFormat") => list(any()),
        required("SecureMessagingConfidentialityKeyIdentifier") => String.t() | Atom.t(),
        required("SecureMessagingIntegrityKeyIdentifier") => String.t() | Atom.t()
      }

  """
  @type generate_mac_emv_pin_change_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ibm3624_pin_verification() :: %{
        "DecimalizationTable" => String.t() | Atom.t(),
        "PinOffset" => String.t() | Atom.t(),
        "PinValidationData" => String.t() | Atom.t(),
        "PinValidationDataPadCharacter" => String.t() | Atom.t()
      }

  """
  @type ibm3624_pin_verification() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      visa_pin_verification() :: %{
        "PinVerificationKeyIndex" => integer(),
        "VerificationValue" => String.t() | Atom.t()
      }

  """
  @type visa_pin_verification() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      session_key_emv_common() :: %{
        "ApplicationTransactionCounter" => String.t() | Atom.t(),
        "PanSequenceNumber" => String.t() | Atom.t(),
        "PrimaryAccountNumber" => String.t() | Atom.t()
      }

  """
  @type session_key_emv_common() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      generate_mac_emv_pin_change_output() :: %{
        "EncryptedPinBlock" => String.t() | Atom.t(),
        "Mac" => String.t() | Atom.t(),
        "NewPinPekArn" => String.t() | Atom.t(),
        "NewPinPekKeyCheckValue" => String.t() | Atom.t(),
        "SecureMessagingConfidentialityKeyArn" => String.t() | Atom.t(),
        "SecureMessagingConfidentialityKeyCheckValue" => String.t() | Atom.t(),
        "SecureMessagingIntegrityKeyArn" => String.t() | Atom.t(),
        "SecureMessagingIntegrityKeyCheckValue" => String.t() | Atom.t(),
        "VisaAmexDerivationOutputs" => visa_amex_derivation_outputs()
      }

  """
  @type generate_mac_emv_pin_change_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      master_card_attributes() :: %{
        "ApplicationCryptogram" => String.t() | Atom.t(),
        "MajorKeyDerivationMode" => list(any()),
        "PanSequenceNumber" => String.t() | Atom.t(),
        "PrimaryAccountNumber" => String.t() | Atom.t()
      }

  """
  @type master_card_attributes() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      emv2000_attributes() :: %{
        "ApplicationTransactionCounter" => String.t() | Atom.t(),
        "MajorKeyDerivationMode" => list(any()),
        "PanSequenceNumber" => String.t() | Atom.t(),
        "PrimaryAccountNumber" => String.t() | Atom.t()
      }

  """
  @type emv2000_attributes() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ibm3624_natural_pin() :: %{
        "DecimalizationTable" => String.t() | Atom.t(),
        "PinValidationData" => String.t() | Atom.t(),
        "PinValidationDataPadCharacter" => String.t() | Atom.t()
      }

  """
  @type ibm3624_natural_pin() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      session_key_emv2000() :: %{
        "ApplicationTransactionCounter" => String.t() | Atom.t(),
        "PanSequenceNumber" => String.t() | Atom.t(),
        "PrimaryAccountNumber" => String.t() | Atom.t()
      }

  """
  @type session_key_emv2000() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      symmetric_encryption_attributes() :: %{
        "InitializationVector" => String.t() | Atom.t(),
        "Mode" => list(any()),
        "PaddingType" => list(any())
      }

  """
  @type symmetric_encryption_attributes() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      verify_card_validation_data_output() :: %{
        "KeyArn" => String.t() | Atom.t(),
        "KeyCheckValue" => String.t() | Atom.t()
      }

  """
  @type verify_card_validation_data_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      emv_common_attributes() :: %{
        "ApplicationCryptogram" => String.t() | Atom.t(),
        "MajorKeyDerivationMode" => list(any()),
        "Mode" => list(any()),
        "PanSequenceNumber" => String.t() | Atom.t(),
        "PinBlockLengthPosition" => list(any()),
        "PinBlockPaddingType" => list(any()),
        "PrimaryAccountNumber" => String.t() | Atom.t()
      }

  """
  @type emv_common_attributes() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      verification_failed_exception() :: %{
        "Message" => [String.t() | Atom.t()],
        "Reason" => String.t() | Atom.t()
      }

  """
  @type verification_failed_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      verify_pin_data_input() :: %{
        optional("DukptAttributes") => dukpt_attributes(),
        optional("EncryptionWrappedKey") => wrapped_key(),
        optional("PinDataLength") => integer(),
        required("EncryptedPinBlock") => String.t() | Atom.t(),
        required("EncryptionKeyIdentifier") => String.t() | Atom.t(),
        required("PinBlockFormat") => list(any()),
        required("PrimaryAccountNumber") => String.t() | Atom.t(),
        required("VerificationAttributes") => list(),
        required("VerificationKeyIdentifier") => String.t() | Atom.t()
      }

  """
  @type verify_pin_data_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      session_key_mastercard() :: %{
        "ApplicationTransactionCounter" => String.t() | Atom.t(),
        "PanSequenceNumber" => String.t() | Atom.t(),
        "PrimaryAccountNumber" => String.t() | Atom.t(),
        "UnpredictableNumber" => String.t() | Atom.t()
      }

  """
  @type session_key_mastercard() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      decrypt_data_output() :: %{
        "KeyArn" => String.t() | Atom.t(),
        "KeyCheckValue" => String.t() | Atom.t(),
        "PlainText" => String.t() | Atom.t()
      }

  """
  @type decrypt_data_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      re_encrypt_data_input() :: %{
        optional("IncomingWrappedKey") => wrapped_key(),
        optional("OutgoingWrappedKey") => wrapped_key(),
        required("CipherText") => String.t() | Atom.t(),
        required("IncomingEncryptionAttributes") => list(),
        required("OutgoingEncryptionAttributes") => list(),
        required("OutgoingKeyIdentifier") => String.t() | Atom.t()
      }

  """
  @type re_encrypt_data_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      generate_card_validation_data_output() :: %{
        "KeyArn" => String.t() | Atom.t(),
        "KeyCheckValue" => String.t() | Atom.t(),
        "ValidationData" => String.t() | Atom.t()
      }

  """
  @type generate_card_validation_data_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      re_encrypt_data_output() :: %{
        "CipherText" => String.t() | Atom.t(),
        "KeyArn" => String.t() | Atom.t(),
        "KeyCheckValue" => String.t() | Atom.t()
      }

  """
  @type re_encrypt_data_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      generate_pin_data_output() :: %{
        "EncryptedPinBlock" => String.t() | Atom.t(),
        "EncryptionKeyArn" => String.t() | Atom.t(),
        "EncryptionKeyCheckValue" => String.t() | Atom.t(),
        "GenerationKeyArn" => String.t() | Atom.t(),
        "GenerationKeyCheckValue" => String.t() | Atom.t(),
        "PinData" => list()
      }

  """
  @type generate_pin_data_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      card_verification_value1() :: %{
        "CardExpiryDate" => String.t() | Atom.t(),
        "ServiceCode" => String.t() | Atom.t()
      }

  """
  @type card_verification_value1() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      decrypt_data_input() :: %{
        optional("WrappedKey") => wrapped_key(),
        required("CipherText") => String.t() | Atom.t(),
        required("DecryptionAttributes") => list()
      }

  """
  @type decrypt_data_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | Atom.t()]
      }

  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      verify_auth_request_cryptogram_input() :: %{
        optional("AuthResponseAttributes") => list(),
        required("AuthRequestCryptogram") => String.t() | Atom.t(),
        required("KeyIdentifier") => String.t() | Atom.t(),
        required("MajorKeyDerivationMode") => list(any()),
        required("SessionKeyDerivationAttributes") => list(),
        required("TransactionData") => String.t() | Atom.t()
      }

  """
  @type verify_auth_request_cryptogram_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      generate_card_validation_data_input() :: %{
        optional("ValidationDataLength") => integer(),
        required("GenerationAttributes") => list(),
        required("KeyIdentifier") => String.t() | Atom.t(),
        required("PrimaryAccountNumber") => String.t() | Atom.t()
      }

  """
  @type generate_card_validation_data_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      visa_amex_derivation_outputs() :: %{
        "AuthorizationRequestKeyArn" => String.t() | Atom.t(),
        "AuthorizationRequestKeyCheckValue" => String.t() | Atom.t(),
        "CurrentPinPekArn" => String.t() | Atom.t(),
        "CurrentPinPekKeyCheckValue" => String.t() | Atom.t()
      }

  """
  @type visa_amex_derivation_outputs() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ibm3624_random_pin() :: %{
        "DecimalizationTable" => String.t() | Atom.t(),
        "PinValidationData" => String.t() | Atom.t(),
        "PinValidationDataPadCharacter" => String.t() | Atom.t()
      }

  """
  @type ibm3624_random_pin() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      translate_pin_data_output() :: %{
        "KeyArn" => String.t() | Atom.t(),
        "KeyCheckValue" => String.t() | Atom.t(),
        "PinBlock" => String.t() | Atom.t()
      }

  """
  @type translate_pin_data_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      session_key_visa() :: %{
        "PanSequenceNumber" => String.t() | Atom.t(),
        "PrimaryAccountNumber" => String.t() | Atom.t()
      }

  """
  @type session_key_visa() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      verify_pin_data_output() :: %{
        "EncryptionKeyArn" => String.t() | Atom.t(),
        "EncryptionKeyCheckValue" => String.t() | Atom.t(),
        "VerificationKeyArn" => String.t() | Atom.t(),
        "VerificationKeyCheckValue" => String.t() | Atom.t()
      }

  """
  @type verify_pin_data_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ibm3624_pin_from_offset() :: %{
        "DecimalizationTable" => String.t() | Atom.t(),
        "PinOffset" => String.t() | Atom.t(),
        "PinValidationData" => String.t() | Atom.t(),
        "PinValidationDataPadCharacter" => String.t() | Atom.t()
      }

  """
  @type ibm3624_pin_from_offset() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      translation_pin_data_iso_format1() :: %{}

  """
  @type translation_pin_data_iso_format1() :: %{}

  @typedoc """

  ## Example:

      generate_mac_output() :: %{
        "KeyArn" => String.t() | Atom.t(),
        "KeyCheckValue" => String.t() | Atom.t(),
        "Mac" => String.t() | Atom.t()
      }

  """
  @type generate_mac_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      dukpt_derivation_attributes() :: %{
        "DukptKeyDerivationType" => list(any()),
        "DukptKeyVariant" => list(any()),
        "KeySerialNumber" => String.t() | Atom.t()
      }

  """
  @type dukpt_derivation_attributes() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      dukpt_encryption_attributes() :: %{
        "DukptKeyDerivationType" => list(any()),
        "DukptKeyVariant" => list(any()),
        "InitializationVector" => String.t() | Atom.t(),
        "KeySerialNumber" => String.t() | Atom.t(),
        "Mode" => list(any())
      }

  """
  @type dukpt_encryption_attributes() :: %{String.t() | Atom.t() => any()}

  @type decrypt_data_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type encrypt_data_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type generate_card_validation_data_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type generate_mac_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type generate_mac_emv_pin_change_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type generate_pin_data_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type re_encrypt_data_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type translate_pin_data_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type verify_auth_request_cryptogram_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | verification_failed_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type verify_card_validation_data_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | verification_failed_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type verify_mac_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | verification_failed_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type verify_pin_data_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | verification_failed_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2022-02-03",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "dataplane.payment-cryptography",
      global?: false,
      hostname: nil,
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

  You can use an decryption key generated within Amazon Web Services Payment
  Cryptography, or you can import your own decryption key by calling
  [ImportKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html). For this operation, the key must have `KeyModesOfUse` set to `Decrypt`. In
  asymmetric decryption, Amazon Web Services Payment Cryptography decrypts the
  ciphertext using the private component of the asymmetric encryption key pair.
  For data encryption outside of Amazon Web Services Payment Cryptography, you can
  export the public component of the asymmetric key pair by calling
  [GetPublicCertificate](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetPublicKeyCertificate.html).

  This operation also supports dynamic keys, allowing you to pass a dynamic
  decryption key as a TR-31 WrappedKeyBlock. This can be used when key material is
  frequently rotated, such as during every card transaction, and there is need to
  avoid importing short-lived keys into Amazon Web Services Payment Cryptography.
  To decrypt using dynamic keys, the `keyARN` is the Key Encryption Key (KEK) of
  the TR-31 wrapped decryption key material. The incoming wrapped key shall have a
  key purpose of D0 with a mode of use of B or D. For more information, see [Using Dynamic
  Keys](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/use-cases-acquirers-dynamickeys.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

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
  @spec decrypt_data(map(), String.t() | Atom.t(), decrypt_data_input(), list()) ::
          {:ok, decrypt_data_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, decrypt_data_errors()}
  def decrypt_data(%Client{} = client, key_identifier, input, options \\ []) do
    url_path = "/keys/#{AWS.Util.encode_uri(key_identifier)}/decrypt"
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
  [ImportKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html).  This operation also supports dynamic keys, allowing you to pass a dynamic
  encryption key as a TR-31 WrappedKeyBlock. This can be used when key material is
  frequently rotated, such as during every card transaction, and there is need to
  avoid importing short-lived keys into Amazon Web Services Payment Cryptography.
  To encrypt using dynamic keys, the `keyARN` is the Key Encryption Key (KEK) of
  the TR-31 wrapped encryption key material. The incoming wrapped key shall have a
  key purpose of D0 with a mode of use of B or D. For more information, see [Using
  Dynamic
  Keys](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/use-cases-acquirers-dynamickeys.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  For symmetric and DUKPT encryption, Amazon Web Services Payment Cryptography
  supports `TDES` and `AES` algorithms. For EMV encryption, Amazon Web Services
  Payment Cryptography supports `TDES` algorithms.For asymmetric encryption,
  Amazon Web Services Payment Cryptography supports `RSA`.

  When you use TDES or TDES DUKPT, the plaintext data length must be a multiple of
  8 bytes. For AES or AES DUKPT, the plaintext data length must be a multiple of
  16 bytes. For RSA, it sould be equal to the key size unless padding is enabled.

  To encrypt using DUKPT, you must already have a BDK (Base Derivation Key) key in
  your account with `KeyModesOfUse` set to `DeriveKey`, or you can generate a new
  DUKPT key by calling
  [CreateKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html). To encrypt using EMV, you must already have an IMK (Issuer Master Key) key in
  your account with `KeyModesOfUse` set to `DeriveKey`.

  For information about valid keys for this operation, see [Understanding key
  attributes](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
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
  @spec encrypt_data(map(), String.t() | Atom.t(), encrypt_data_input(), list()) ::
          {:ok, encrypt_data_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, encrypt_data_errors()}
  def encrypt_data(%Client{} = client, key_identifier, input, options \\ []) do
    url_path = "/keys/#{AWS.Util.encode_uri(key_identifier)}/encrypt"
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
  @spec generate_card_validation_data(map(), generate_card_validation_data_input(), list()) ::
          {:ok, generate_card_validation_data_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, generate_card_validation_data_errors()}
  def generate_card_validation_data(%Client{} = client, input, options \\ []) do
    url_path = "/cardvalidationdata/generate"
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
  @spec generate_mac(map(), generate_mac_input(), list()) ::
          {:ok, generate_mac_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, generate_mac_errors()}
  def generate_mac(%Client{} = client, input, options \\ []) do
    url_path = "/mac/generate"
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
  Generates an issuer script mac for EMV payment cards that use offline PINs as
  the cardholder verification method (CVM).

  This operation generates an authenticated issuer script response by appending
  the incoming message data (APDU command) with the target encrypted PIN block in
  ISO2 format. The command structure and method to send the issuer script update
  to the card is not defined by this operation and is typically determined by the
  applicable payment card scheme.

  The primary inputs to this operation include the incoming new encrypted
  pinblock, PIN encryption key (PEK), issuer master key (IMK), primary account
  number (PAN), and the payment card derivation method.

  The operation uses two issuer master keys - secure messaging for confidentiality
  (IMK-SMC) and secure messaging for integrity (IMK-SMI). The SMC key is used to
  internally derive a key to secure the pin, while SMI key is used to internally
  derive a key to authenticate the script reponse as per the [EMV 4.4 - Book 2 - Security and Key Management](https://www.emvco.com/specifications/)
  specification.

  This operation supports Amex, EMV2000, EMVCommon, Mastercard and Visa derivation
  methods, each requiring specific input parameters. Users must follow the
  specific derivation method and input parameters defined by the respective
  payment card scheme.

  Use `GenerateMac` operation when sending a script update to an EMV card that
  does not involve PIN change. When assigning IAM permissions, it is important to
  understand that `EncryptData` using EMV keys and `GenerateMac` perform similar
  functions to this command.

  **Cross-account use**: This operation can't be used across different Amazon Web
  Services accounts.

  ## Related operations:

    * `EncryptData`

    * `GenerateMac`
  """
  @spec generate_mac_emv_pin_change(map(), generate_mac_emv_pin_change_input(), list()) ::
          {:ok, generate_mac_emv_pin_change_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, generate_mac_emv_pin_change_errors()}
  def generate_mac_emv_pin_change(%Client{} = client, input, options \\ []) do
    url_path = "/macemvpinchange/generate"
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
  Generates pin-related data such as PIN, PIN Verification Value (PVV), PIN Block,
  and PIN Offset during new card issuance or reissuance.

  For more information, see [Generate PIN data](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/generate-pin-data.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  PIN data is never transmitted in clear to or from Amazon Web Services Payment
  Cryptography. This operation generates PIN, PVV, or PIN Offset and then encrypts
  it using Pin Encryption Key (PEK) to create an `EncryptedPinBlock` for
  transmission from Amazon Web Services Payment Cryptography. This operation uses
  a separate Pin Verification Key (PVK) for VISA PVV generation.

  Using ECDH key exchange, you can receive cardholder selectable PINs into Amazon
  Web Services Payment Cryptography. The ECDH derived key protects the incoming
  PIN block. You can also use it for reveal PIN, wherein the generated PIN block
  is protected by the ECDH derived key before transmission from Amazon Web
  Services Payment Cryptography. For more information on establishing ECDH derived
  keys, see the [Generating keys](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/create-keys.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

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
  @spec generate_pin_data(map(), generate_pin_data_input(), list()) ::
          {:ok, generate_pin_data_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, generate_pin_data_errors()}
  def generate_pin_data(%Client{} = client, input, options \\ []) do
    url_path = "/pindata/generate"
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
  Re-encrypt ciphertext using DUKPT or Symmetric data encryption keys.

  You can either generate an encryption key within Amazon Web Services Payment
  Cryptography by calling
  [CreateKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html) or import your own encryption key by calling
  [ImportKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html).
  The `KeyArn` for use with this operation must be in a compatible key state with
  `KeyModesOfUse` set to `Encrypt`.

  This operation also supports dynamic keys, allowing you to pass a dynamic
  encryption key as a TR-31 WrappedKeyBlock. This can be used when key material is
  frequently rotated, such as during every card transaction, and there is need to
  avoid importing short-lived keys into Amazon Web Services Payment Cryptography.
  To re-encrypt using dynamic keys, the `keyARN` is the Key Encryption Key (KEK)
  of the TR-31 wrapped encryption key material. The incoming wrapped key shall
  have a key purpose of D0 with a mode of use of B or D. For more information, see
  [Using Dynamic Keys](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/use-cases-acquirers-dynamickeys.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  For symmetric and DUKPT encryption, Amazon Web Services Payment Cryptography
  supports `TDES` and `AES` algorithms. To encrypt using DUKPT, a DUKPT key must
  already exist within your account with `KeyModesOfUse` set to `DeriveKey` or a
  new DUKPT can be generated by calling
  [CreateKey](https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html).  For information about valid keys for this operation, see [Understanding key
  attributes](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html)
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
  @spec re_encrypt_data(map(), String.t() | Atom.t(), re_encrypt_data_input(), list()) ::
          {:ok, re_encrypt_data_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, re_encrypt_data_errors()}
  def re_encrypt_data(%Client{} = client, incoming_key_identifier, input, options \\ []) do
    url_path = "/keys/#{AWS.Util.encode_uri(incoming_key_identifier)}/reencrypt"
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
  Translates encrypted PIN block from and to ISO 9564 formats 0,1,3,4.

  For more information, see [Translate PIN data](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/translate-pin-data.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  PIN block translation involves changing a PIN block from one encryption key to
  another and optionally change its format. PIN block translation occurs entirely
  within the HSM boundary and PIN data never enters or leaves Amazon Web Services
  Payment Cryptography in clear text. The encryption key transformation can be
  from PEK (Pin Encryption Key) to BDK (Base Derivation Key) for DUKPT or from BDK
  for DUKPT to PEK.

  Amazon Web Services Payment Cryptography also supports use of dynamic keys and
  ECDH (Elliptic Curve Diffie-Hellman) based key exchange for this operation.

  Dynamic keys allow you to pass a PEK as a TR-31 WrappedKeyBlock. They can be
  used when key material is frequently rotated, such as during every card
  transaction, and there is need to avoid importing short-lived keys into Amazon
  Web Services Payment Cryptography. To translate PIN block using dynamic keys,
  the `keyARN` is the Key Encryption Key (KEK) of the TR-31 wrapped PEK. The
  incoming wrapped key shall have a key purpose of P0 with a mode of use of B or
  D. For more information, see [Using Dynamic Keys](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/use-cases-acquirers-dynamickeys.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

  Using ECDH key exchange, you can receive cardholder selectable PINs into Amazon
  Web Services Payment Cryptography. The ECDH derived key protects the incoming
  PIN block, which is translated to a PEK encrypted PIN block for use within the
  service. You can also use ECDH for reveal PIN, wherein the service translates
  the PIN block from PEK to a ECDH derived encryption key. For more information on
  establishing ECDH derived keys, see the [Generating keys](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/create-keys.html)
  in the *Amazon Web Services Payment Cryptography User Guide*.

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
  @spec translate_pin_data(map(), translate_pin_data_input(), list()) ::
          {:ok, translate_pin_data_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, translate_pin_data_errors()}
  def translate_pin_data(%Client{} = client, input, options \\ []) do
    url_path = "/pindata/translate"
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
  @spec verify_auth_request_cryptogram(map(), verify_auth_request_cryptogram_input(), list()) ::
          {:ok, verify_auth_request_cryptogram_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, verify_auth_request_cryptogram_errors()}
  def verify_auth_request_cryptogram(%Client{} = client, input, options \\ []) do
    url_path = "/cryptogram/verify"
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
  @spec verify_card_validation_data(map(), verify_card_validation_data_input(), list()) ::
          {:ok, verify_card_validation_data_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, verify_card_validation_data_errors()}
  def verify_card_validation_data(%Client{} = client, input, options \\ []) do
    url_path = "/cardvalidationdata/verify"
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
  @spec verify_mac(map(), verify_mac_input(), list()) ::
          {:ok, verify_mac_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, verify_mac_errors()}
  def verify_mac(%Client{} = client, input, options \\ []) do
    url_path = "/mac/verify"
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
  @spec verify_pin_data(map(), verify_pin_data_input(), list()) ::
          {:ok, verify_pin_data_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, verify_pin_data_errors()}
  def verify_pin_data(%Client{} = client, input, options \\ []) do
    url_path = "/pindata/verify"
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
end
