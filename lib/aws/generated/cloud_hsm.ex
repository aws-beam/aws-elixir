# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudHSM do
  @moduledoc """
  AWS CloudHSM Service

  This is documentation for **AWS CloudHSM Classic**.

  For
  more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS
  CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/),
  and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      delete_hsm_request() :: %{
        required("HsmArn") => String.t()
      }
      
  """
  @type delete_hsm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hsm_response() :: %{
        "HsmArn" => String.t()
      }
      
  """
  @type create_hsm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_hapg_response() :: %{
        "HapgArn" => String.t()
      }
      
  """
  @type modify_hapg_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_luna_client_request() :: %{
        required("Certificate") => String.t(),
        required("ClientArn") => String.t()
      }
      
  """
  @type modify_luna_client_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_hsm_request() :: %{
        optional("EniIp") => String.t(),
        optional("ExternalId") => String.t(),
        optional("IamRoleArn") => String.t(),
        optional("SubnetId") => String.t(),
        optional("SyslogIp") => String.t(),
        required("HsmArn") => String.t()
      }
      
  """
  @type modify_hsm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hapgs_request() :: %{
        optional("NextToken") => String.t()
      }
      
  """
  @type list_hapgs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_from_resource_response() :: %{
        "Status" => String.t()
      }
      
  """
  @type remove_tags_from_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_config_request() :: %{
        required("ClientArn") => String.t(),
        required("ClientVersion") => list(any()),
        required("HapgList") => list(String.t()())
      }
      
  """
  @type get_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hsms_request() :: %{
        optional("NextToken") => String.t()
      }
      
  """
  @type list_hsms_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_luna_clients_request() :: %{
        optional("NextToken") => String.t()
      }
      
  """
  @type list_luna_clients_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_config_response() :: %{
        "ConfigCred" => String.t(),
        "ConfigFile" => String.t(),
        "ConfigType" => String.t()
      }
      
  """
  @type get_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_hapg_request() :: %{
        required("HapgArn") => String.t()
      }
      
  """
  @type describe_hapg_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_luna_client_request() :: %{
        required("ClientArn") => String.t()
      }
      
  """
  @type delete_luna_client_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_to_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagList") => list(tag()())
      }
      
  """
  @type add_tags_to_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_hsm_response() :: %{
        "AvailabilityZone" => String.t(),
        "EniId" => String.t(),
        "EniIp" => String.t(),
        "HsmArn" => String.t(),
        "HsmType" => String.t(),
        "IamRoleArn" => String.t(),
        "Partitions" => list(String.t()()),
        "SerialNumber" => String.t(),
        "ServerCertLastUpdated" => String.t(),
        "ServerCertUri" => String.t(),
        "SoftwareVersion" => String.t(),
        "SshKeyLastUpdated" => String.t(),
        "SshPublicKey" => String.t(),
        "Status" => list(any()),
        "StatusDetails" => String.t(),
        "SubnetId" => String.t(),
        "SubscriptionEndDate" => String.t(),
        "SubscriptionStartDate" => String.t(),
        "SubscriptionType" => list(any()),
        "VendorName" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type describe_hsm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_luna_client_response() :: %{
        "Certificate" => String.t(),
        "CertificateFingerprint" => String.t(),
        "ClientArn" => String.t(),
        "Label" => String.t(),
        "LastModifiedTimestamp" => String.t()
      }
      
  """
  @type describe_luna_client_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_luna_client_response() :: %{
        "Status" => String.t()
      }
      
  """
  @type delete_luna_client_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_luna_client_response() :: %{
        "ClientArn" => String.t()
      }
      
  """
  @type create_luna_client_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_hsm_response() :: %{
        "Status" => String.t()
      }
      
  """
  @type delete_hsm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_hapg_request() :: %{
        required("HapgArn") => String.t()
      }
      
  """
  @type delete_hapg_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_luna_client_response() :: %{
        "ClientArn" => String.t()
      }
      
  """
  @type modify_luna_client_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_hapg_request() :: %{
        optional("Label") => String.t(),
        optional("PartitionSerialList") => list(String.t()()),
        required("HapgArn") => String.t()
      }
      
  """
  @type modify_hapg_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "message" => String.t(),
        "retryable" => boolean()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hapg_response() :: %{
        "HapgArn" => String.t()
      }
      
  """
  @type create_hapg_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hsm_request() :: %{
        optional("ClientToken") => String.t(),
        optional("EniIp") => String.t(),
        optional("ExternalId") => String.t(),
        optional("SyslogIp") => String.t(),
        required("IamRoleArn") => String.t(),
        required("SshKey") => String.t(),
        required("SubnetId") => String.t(),
        required("SubscriptionType") => list(any())
      }
      
  """
  @type create_hsm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "TagList" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_from_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeyList") => list(String.t()())
      }
      
  """
  @type remove_tags_from_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_to_resource_response() :: %{
        "Status" => String.t()
      }
      
  """
  @type add_tags_to_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_hsm_internal_exception() :: %{
        "message" => String.t(),
        "retryable" => boolean()
      }
      
  """
  @type cloud_hsm_internal_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hapgs_response() :: %{
        "HapgList" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_hapgs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_hsm_request() :: %{
        optional("HsmArn") => String.t(),
        optional("HsmSerialNumber") => String.t()
      }
      
  """
  @type describe_hsm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_available_zones_request() :: %{}
      
  """
  @type list_available_zones_request() :: %{}

  @typedoc """

  ## Example:
      
      cloud_hsm_service_exception() :: %{
        "message" => String.t(),
        "retryable" => boolean()
      }
      
  """
  @type cloud_hsm_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_luna_clients_response() :: %{
        "ClientList" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_luna_clients_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_available_zones_response() :: %{
        "AZList" => list(String.t()())
      }
      
  """
  @type list_available_zones_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hapg_request() :: %{
        required("Label") => String.t()
      }
      
  """
  @type create_hapg_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hsms_response() :: %{
        "HsmList" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_hsms_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_luna_client_request() :: %{
        optional("CertificateFingerprint") => String.t(),
        optional("ClientArn") => String.t()
      }
      
  """
  @type describe_luna_client_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_hapg_response() :: %{
        "Status" => String.t()
      }
      
  """
  @type delete_hapg_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_hapg_response() :: %{
        "HapgArn" => String.t(),
        "HapgSerial" => String.t(),
        "HsmsLastActionFailed" => list(String.t()()),
        "HsmsPendingDeletion" => list(String.t()()),
        "HsmsPendingRegistration" => list(String.t()()),
        "Label" => String.t(),
        "LastModifiedTimestamp" => String.t(),
        "PartitionSerialList" => list(String.t()()),
        "State" => list(any())
      }
      
  """
  @type describe_hapg_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_hsm_response() :: %{
        "HsmArn" => String.t()
      }
      
  """
  @type modify_hsm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_luna_client_request() :: %{
        optional("Label") => String.t(),
        required("Certificate") => String.t()
      }
      
  """
  @type create_luna_client_request() :: %{String.t() => any()}

  @type add_tags_to_resource_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type create_hapg_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type create_hsm_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type create_luna_client_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type delete_hapg_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type delete_hsm_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type delete_luna_client_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type describe_hapg_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type describe_hsm_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type describe_luna_client_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type get_config_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type list_available_zones_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type list_hapgs_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type list_hsms_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type list_luna_clients_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type list_tags_for_resource_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type modify_hapg_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type modify_hsm_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type modify_luna_client_errors() :: cloud_hsm_service_exception()

  @type remove_tags_from_resource_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  def metadata do
    %{
      api_version: "2014-05-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cloudhsm",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "CloudHSM",
      signature_version: "v4",
      signing_name: "cloudhsm",
      target_prefix: "CloudHsmFrontendService"
    }
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For
  more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS
  CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/),
  and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Adds or overwrites one or more tags for the specified AWS CloudHSM resource.

  Each tag consists of a key and a value. Tag keys must be unique to each
  resource.
  """
  @spec add_tags_to_resource(map(), add_tags_to_resource_request(), list()) ::
          {:ok, add_tags_to_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_tags_to_resource_errors()}
  def add_tags_to_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddTagsToResource", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For
  more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS
  CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/),
  and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Creates a high-availability partition group. A high-availability partition group
  is a
  group of partitions that spans multiple physical HSMs.
  """
  @spec create_hapg(map(), create_hapg_request(), list()) ::
          {:ok, create_hapg_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_hapg_errors()}
  def create_hapg(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateHapg", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For
  more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS
  CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/),
  and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Creates an uninitialized HSM instance.

  There is an upfront fee charged for each HSM instance that you create with the
  `CreateHsm` operation. If you accidentally provision an HSM and want to request
  a
  refund, delete the instance using the `DeleteHsm` operation, go to the [AWS Support Center](https://console.aws.amazon.com/support/home), create a new case,
  and select
  **Account and Billing Support**.

  It can take up to 20 minutes to create and provision an HSM. You can monitor the
  status of the HSM with the `DescribeHsm` operation. The HSM is ready to be
  initialized when the status changes to `RUNNING`.
  """
  @spec create_hsm(map(), create_hsm_request(), list()) ::
          {:ok, create_hsm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_hsm_errors()}
  def create_hsm(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateHsm", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For
  more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS
  CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/),
  and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Creates an HSM client.
  """
  @spec create_luna_client(map(), create_luna_client_request(), list()) ::
          {:ok, create_luna_client_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_luna_client_errors()}
  def create_luna_client(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLunaClient", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For
  more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS
  CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/),
  and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Deletes a high-availability partition group.
  """
  @spec delete_hapg(map(), delete_hapg_request(), list()) ::
          {:ok, delete_hapg_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_hapg_errors()}
  def delete_hapg(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteHapg", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For
  more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS
  CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/),
  and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Deletes an HSM. After completion, this operation cannot be undone and your key
  material
  cannot be recovered.
  """
  @spec delete_hsm(map(), delete_hsm_request(), list()) ::
          {:ok, delete_hsm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_hsm_errors()}
  def delete_hsm(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteHsm", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For
  more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS
  CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/),
  and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Deletes a client.
  """
  @spec delete_luna_client(map(), delete_luna_client_request(), list()) ::
          {:ok, delete_luna_client_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_luna_client_errors()}
  def delete_luna_client(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLunaClient", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For
  more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS
  CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/),
  and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Retrieves information about a high-availability partition group.
  """
  @spec describe_hapg(map(), describe_hapg_request(), list()) ::
          {:ok, describe_hapg_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_hapg_errors()}
  def describe_hapg(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeHapg", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For
  more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS
  CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/),
  and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Retrieves information about an HSM. You can identify the HSM by its ARN or its
  serial
  number.
  """
  @spec describe_hsm(map(), describe_hsm_request(), list()) ::
          {:ok, describe_hsm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_hsm_errors()}
  def describe_hsm(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeHsm", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For
  more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS
  CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/),
  and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Retrieves information about an HSM client.
  """
  @spec describe_luna_client(map(), describe_luna_client_request(), list()) ::
          {:ok, describe_luna_client_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_luna_client_errors()}
  def describe_luna_client(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLunaClient", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For
  more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS
  CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/),
  and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Gets the configuration files necessary to connect to all high availability
  partition
  groups the client is associated with.
  """
  @spec get_config(map(), get_config_request(), list()) ::
          {:ok, get_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_config_errors()}
  def get_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetConfig", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For
  more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS
  CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/),
  and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Lists the Availability Zones that have available AWS CloudHSM capacity.
  """
  @spec list_available_zones(map(), list_available_zones_request(), list()) ::
          {:ok, list_available_zones_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_available_zones_errors()}
  def list_available_zones(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAvailableZones", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For
  more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS
  CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/),
  and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Lists the high-availability partition groups for the account.

  This operation supports pagination with the use of the `NextToken` member.
  If more results are available, the `NextToken` member of the response contains a
  token that you pass in the next call to `ListHapgs` to retrieve the next set of
  items.
  """
  @spec list_hapgs(map(), list_hapgs_request(), list()) ::
          {:ok, list_hapgs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_hapgs_errors()}
  def list_hapgs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListHapgs", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For
  more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS
  CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/),
  and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Retrieves the identifiers of all of the HSMs provisioned for the current
  customer.

  This operation supports pagination with the use of the `NextToken` member.
  If more results are available, the `NextToken` member of the response contains a
  token that you pass in the next call to `ListHsms` to retrieve the next set of
  items.
  """
  @spec list_hsms(map(), list_hsms_request(), list()) ::
          {:ok, list_hsms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_hsms_errors()}
  def list_hsms(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListHsms", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For
  more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS
  CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/),
  and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Lists all of the clients.

  This operation supports pagination with the use of the `NextToken` member.
  If more results are available, the `NextToken` member of the response contains a
  token that you pass in the next call to `ListLunaClients` to retrieve the next
  set
  of items.
  """
  @spec list_luna_clients(map(), list_luna_clients_request(), list()) ::
          {:ok, list_luna_clients_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_luna_clients_errors()}
  def list_luna_clients(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLunaClients", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For
  more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS
  CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/),
  and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Returns a list of all tags for the specified AWS CloudHSM resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For
  more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS
  CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/),
  and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Modifies an existing high-availability partition group.
  """
  @spec modify_hapg(map(), modify_hapg_request(), list()) ::
          {:ok, modify_hapg_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_hapg_errors()}
  def modify_hapg(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyHapg", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For
  more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS
  CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/),
  and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Modifies an HSM.

  This operation can result in the HSM being offline for up to 15 minutes while
  the AWS
  CloudHSM service is reconfigured. If you are modifying a production HSM, you
  should ensure
  that your AWS CloudHSM service is configured for high availability, and consider
  executing this
  operation during a maintenance window.
  """
  @spec modify_hsm(map(), modify_hsm_request(), list()) ::
          {:ok, modify_hsm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_hsm_errors()}
  def modify_hsm(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyHsm", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For
  more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS
  CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/),
  and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Modifies the certificate used by the client.

  This action can potentially start a workflow to install the new certificate on
  the
  client's HSMs.
  """
  @spec modify_luna_client(map(), modify_luna_client_request(), list()) ::
          {:ok, modify_luna_client_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_luna_client_errors()}
  def modify_luna_client(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyLunaClient", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For
  more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS
  CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/),
  and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Removes one or more tags from the specified AWS CloudHSM resource.

  To remove a tag, specify only the tag key to remove (not the value). To
  overwrite the
  value for an existing tag, use `AddTagsToResource`.
  """
  @spec remove_tags_from_resource(map(), remove_tags_from_resource_request(), list()) ::
          {:ok, remove_tags_from_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_tags_from_resource_errors()}
  def remove_tags_from_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveTagsFromResource", input, options)
  end
end
