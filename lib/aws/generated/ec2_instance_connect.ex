# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EC2InstanceConnect do
  @moduledoc """
  This is the * Amazon EC2 Instance Connect API Reference*.

  It
  provides descriptions, syntax, and usage examples for each of the actions for
  Amazon EC2
  Instance Connect. Amazon EC2 Instance Connect enables system administrators to
  publish
  one-time use SSH public keys to EC2, providing users a simple and secure way to
  connect
  to their instances.

  To view the Amazon EC2 Instance Connect content in the * Amazon EC2 User
  Guide*, see [Connect to your Linux instance using EC2 Instance
  Connect](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Connect-using-EC2-Instance-Connect.html).

  For Amazon EC2 APIs, see the [Amazon EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Welcome.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      auth_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type auth_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_instance_not_found_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type ec2_instance_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_instance_state_invalid_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type ec2_instance_state_invalid_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_instance_type_invalid_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type ec2_instance_type_invalid_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_instance_unavailable_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type ec2_instance_unavailable_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_args_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type invalid_args_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      send_serial_console_ssh_public_key_request() :: %{
        optional("SerialPort") => integer(),
        required("InstanceId") => String.t() | Atom.t(),
        required("SSHPublicKey") => String.t() | Atom.t()
      }
      
  """
  @type send_serial_console_ssh_public_key_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      send_serial_console_ssh_public_key_response() :: %{
        "RequestId" => String.t() | Atom.t(),
        "Success" => boolean()
      }
      
  """
  @type send_serial_console_ssh_public_key_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      send_ssh_public_key_request() :: %{
        optional("AvailabilityZone") => String.t() | Atom.t(),
        required("InstanceId") => String.t() | Atom.t(),
        required("InstanceOSUser") => String.t() | Atom.t(),
        required("SSHPublicKey") => String.t() | Atom.t()
      }
      
  """
  @type send_ssh_public_key_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      send_ssh_public_key_response() :: %{
        "RequestId" => String.t() | Atom.t(),
        "Success" => boolean()
      }
      
  """
  @type send_ssh_public_key_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      serial_console_access_disabled_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type serial_console_access_disabled_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      serial_console_session_limit_exceeded_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type serial_console_session_limit_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      serial_console_session_unavailable_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type serial_console_session_unavailable_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      serial_console_session_unsupported_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type serial_console_session_unsupported_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      service_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type service_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @type send_serial_console_ssh_public_key_errors() ::
          throttling_exception()
          | service_exception()
          | serial_console_session_unsupported_exception()
          | serial_console_session_unavailable_exception()
          | serial_console_session_limit_exceeded_exception()
          | serial_console_access_disabled_exception()
          | invalid_args_exception()
          | ec2_instance_unavailable_exception()
          | ec2_instance_type_invalid_exception()
          | ec2_instance_state_invalid_exception()
          | ec2_instance_not_found_exception()
          | auth_exception()

  @type send_ssh_public_key_errors() ::
          throttling_exception()
          | service_exception()
          | invalid_args_exception()
          | ec2_instance_unavailable_exception()
          | ec2_instance_state_invalid_exception()
          | ec2_instance_not_found_exception()
          | auth_exception()

  def metadata do
    %{
      api_version: "2018-04-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ec2-instance-connect",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "EC2 Instance Connect",
      signature_version: "v4",
      signing_name: "ec2-instance-connect",
      target_prefix: "AWSEC2InstanceConnectService"
    }
  end

  @doc """
  Pushes an SSH public key to the specified EC2 instance.

  The key remains for 60
  seconds, which gives you 60 seconds to establish a serial console connection to
  the
  instance using SSH. For more information, see [EC2 Serial Console](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-serial-console.html)
  in
  the *Amazon EC2 User Guide*.
  """
  @spec send_serial_console_ssh_public_key(
          map(),
          send_serial_console_ssh_public_key_request(),
          list()
        ) ::
          {:ok, send_serial_console_ssh_public_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_serial_console_ssh_public_key_errors()}
  def send_serial_console_ssh_public_key(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SendSerialConsoleSSHPublicKey", input, options)
  end

  @doc """
  Pushes an SSH public key to the specified EC2 instance for use by the specified
  user.

  The key remains for 60 seconds. For more information, see [Connect to your Linux instance using EC2 Instance
  Connect](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Connect-using-EC2-Instance-Connect.html)
  in the *Amazon EC2
  User Guide*.
  """
  @spec send_ssh_public_key(map(), send_ssh_public_key_request(), list()) ::
          {:ok, send_ssh_public_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_ssh_public_key_errors()}
  def send_ssh_public_key(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SendSSHPublicKey", input, options)
  end
end
