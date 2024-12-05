# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BedrockDataAutomationRuntime do
  @moduledoc """
  Amazon Bedrock Keystone Runtime
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      blueprint() :: %{
        "blueprintArn" => String.t(),
        "stage" => list(any()),
        "version" => String.t()
      }
      
  """
  @type blueprint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_automation_configuration() :: %{
        "dataAutomationArn" => String.t(),
        "stage" => list(any())
      }
      
  """
  @type data_automation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_configuration() :: %{
        "kmsEncryptionContext" => map(),
        "kmsKeyId" => String.t()
      }
      
  """
  @type encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_bridge_configuration() :: %{
        "eventBridgeEnabled" => [boolean()]
      }
      
  """
  @type event_bridge_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_automation_status_request() :: %{}
      
  """
  @type get_data_automation_status_request() :: %{}

  @typedoc """

  ## Example:
      
      get_data_automation_status_response() :: %{
        "errorMessage" => [String.t()],
        "errorType" => [String.t()],
        "outputConfiguration" => output_configuration(),
        "status" => list(any())
      }
      
  """
  @type get_data_automation_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_configuration() :: %{
        "s3Uri" => String.t()
      }
      
  """
  @type input_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invoke_data_automation_async_request() :: %{
        optional("blueprints") => list(blueprint()()),
        optional("clientToken") => String.t(),
        optional("dataAutomationConfiguration") => data_automation_configuration(),
        optional("encryptionConfiguration") => encryption_configuration(),
        optional("notificationConfiguration") => notification_configuration(),
        required("inputConfiguration") => input_configuration(),
        required("outputConfiguration") => output_configuration()
      }
      
  """
  @type invoke_data_automation_async_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invoke_data_automation_async_response() :: %{
        "invocationArn" => String.t()
      }
      
  """
  @type invoke_data_automation_async_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification_configuration() :: %{
        "eventBridgeConfiguration" => event_bridge_configuration()
      }
      
  """
  @type notification_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_configuration() :: %{
        "s3Uri" => String.t()
      }
      
  """
  @type output_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @type get_data_automation_status_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type invoke_data_automation_async_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2024-06-13",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "bedrock-data-automation-runtime",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Bedrock Data Automation Runtime",
      signature_version: "v4",
      signing_name: "bedrock",
      target_prefix: "AmazonBedrockKeystoneRuntimeService"
    }
  end

  @doc """
  API used to get data automation status.
  """
  @spec get_data_automation_status(map(), get_data_automation_status_request(), list()) ::
          {:ok, get_data_automation_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_automation_status_errors()}
  def get_data_automation_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDataAutomationStatus", input, options)
  end

  @doc """
  Async API: Invoke data automation.
  """
  @spec invoke_data_automation_async(map(), invoke_data_automation_async_request(), list()) ::
          {:ok, invoke_data_automation_async_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invoke_data_automation_async_errors()}
  def invoke_data_automation_async(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "InvokeDataAutomationAsync", input, options)
  end
end
