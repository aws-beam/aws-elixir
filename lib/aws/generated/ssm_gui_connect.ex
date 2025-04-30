# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSMGuiConnect do
  @moduledoc """
  AWS Systems Manager GUI Connect

  Systems Manager GUI Connect, a component of Fleet Manager, lets you connect to
  your Window
  Server-type Amazon Elastic Compute Cloud (Amazon EC2) instances using the Remote
  Desktop Protocol (RDP).

  GUI
  Connect, which is powered by [Amazon DCV](https://docs.aws.amazon.com/dcv/latest/adminguide/what-is-dcv.html),
  provides you
  with secure connectivity to your Windows Server instances directly from the
  Systems Manager console.
  You can have up to four simultaneous connections in a single browser window. In
  the
  console, GUI Connect is also referred to as Fleet Manager Remote Desktop.

  This reference is intended to be used with the [
  *Amazon Web Services Systems Manager User
  Guide*
  ](https://docs.aws.amazon.com/systems-manager/latest/userguide/). To get
  started, see the following user guide topics:

    *

  [Setting up Amazon Web Services Systems
  Manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-setting-up.html)

    *

  [Connect to a Windows Server managed instance using Remote Desktop](https://docs.aws.amazon.com/systems-manager/latest/userguide/fleet-rdp.html)
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

      conflict_exception() :: %{
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connection_recording_preferences() :: %{
        "KMSKeyArn" => [String.t()],
        "RecordingDestinations" => recording_destinations()
      }

  """
  @type connection_recording_preferences() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_connection_recording_preferences_request() :: %{
        optional("ClientToken") => String.t()
      }

  """
  @type delete_connection_recording_preferences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_connection_recording_preferences_response() :: %{
        "ClientToken" => String.t()
      }

  """
  @type delete_connection_recording_preferences_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connection_recording_preferences_response() :: %{
        "ClientToken" => String.t(),
        "ConnectionRecordingPreferences" => connection_recording_preferences()
      }

  """
  @type get_connection_recording_preferences_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recording_destinations() :: %{
        "S3Buckets" => list(s3_bucket()())
      }

  """
  @type recording_destinations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_bucket() :: %{
        "BucketName" => String.t(),
        "BucketOwner" => String.t()
      }

  """
  @type s3_bucket() :: %{String.t() => any()}

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

      update_connection_recording_preferences_request() :: %{
        optional("ClientToken") => String.t(),
        required("ConnectionRecordingPreferences") => connection_recording_preferences()
      }

  """
  @type update_connection_recording_preferences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_connection_recording_preferences_response() :: %{
        "ClientToken" => String.t(),
        "ConnectionRecordingPreferences" => connection_recording_preferences()
      }

  """
  @type update_connection_recording_preferences_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @type delete_connection_recording_preferences_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type get_connection_recording_preferences_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_connection_recording_preferences_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2021-05-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ssm-guiconnect",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SSM GuiConnect",
      signature_version: "v4",
      signing_name: "ssm-guiconnect",
      target_prefix: nil
    }
  end

  @doc """
  Deletes the preferences for recording RDP connections.
  """
  @spec delete_connection_recording_preferences(
          map(),
          delete_connection_recording_preferences_request(),
          list()
        ) ::
          {:ok, delete_connection_recording_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_connection_recording_preferences_errors()}
  def delete_connection_recording_preferences(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteConnectionRecordingPreferences"
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
  Returns the preferences specified for recording RDP connections in the
  requesting Amazon Web Services account and Amazon Web Services Region.
  """
  @spec get_connection_recording_preferences(map(), %{}, list()) ::
          {:ok, get_connection_recording_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_connection_recording_preferences_errors()}
  def get_connection_recording_preferences(%Client{} = client, input, options \\ []) do
    url_path = "/GetConnectionRecordingPreferences"
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
  Updates the preferences for recording RDP connections.
  """
  @spec update_connection_recording_preferences(
          map(),
          update_connection_recording_preferences_request(),
          list()
        ) ::
          {:ok, update_connection_recording_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_connection_recording_preferences_errors()}
  def update_connection_recording_preferences(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateConnectionRecordingPreferences"
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
