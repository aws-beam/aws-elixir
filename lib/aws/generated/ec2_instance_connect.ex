# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EC2InstanceConnect do
  @moduledoc """
  Amazon EC2 Instance Connect enables system administrators to publish one-time
  use SSH
  public keys to EC2, providing users a simple and secure way to connect to their
  instances.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  auth_exception() :: %{
    "Message" => String.t()
  }
  """
  @type auth_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ec2_instance_not_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type ec2_instance_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ec2_instance_state_invalid_exception() :: %{
    "Message" => String.t()
  }
  """
  @type ec2_instance_state_invalid_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ec2_instance_type_invalid_exception() :: %{
    "Message" => String.t()
  }
  """
  @type ec2_instance_type_invalid_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ec2_instance_unavailable_exception() :: %{
    "Message" => String.t()
  }
  """
  @type ec2_instance_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_args_exception() :: %{
    "Message" => String.t()
  }
  """
  @type invalid_args_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  send_serial_console_ssh_public_key_request() :: %{
    optional("SerialPort") => integer(),
    required("InstanceId") => String.t(),
    required("SSHPublicKey") => String.t()
  }
  """
  @type send_serial_console_ssh_public_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  send_serial_console_ssh_public_key_response() :: %{
    "RequestId" => String.t(),
    "Success" => boolean()
  }
  """
  @type send_serial_console_ssh_public_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  send_ssh_public_key_request() :: %{
    optional("AvailabilityZone") => String.t(),
    required("InstanceId") => String.t(),
    required("InstanceOSUser") => String.t(),
    required("SSHPublicKey") => String.t()
  }
  """
  @type send_ssh_public_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  send_ssh_public_key_response() :: %{
    "RequestId" => String.t(),
    "Success" => boolean()
  }
  """
  @type send_ssh_public_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  serial_console_access_disabled_exception() :: %{
    "Message" => String.t()
  }
  """
  @type serial_console_access_disabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  serial_console_session_limit_exceeded_exception() :: %{
    "Message" => String.t()
  }
  """
  @type serial_console_session_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  serial_console_session_unavailable_exception() :: %{
    "Message" => String.t()
  }
  """
  @type serial_console_session_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_exception() :: %{
    "Message" => String.t()
  }
  """
  @type service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  throttling_exception() :: %{
    "Message" => String.t()
  }
  """
  @type throttling_exception() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2018-04-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ec2-instance-connect",
      global?: false,
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
          | {:error, auth_exception()}
          | {:error, ec2_instance_not_found_exception()}
          | {:error, ec2_instance_state_invalid_exception()}
          | {:error, ec2_instance_type_invalid_exception()}
          | {:error, ec2_instance_unavailable_exception()}
          | {:error, invalid_args_exception()}
          | {:error, serial_console_access_disabled_exception()}
          | {:error, serial_console_session_limit_exceeded_exception()}
          | {:error, serial_console_session_unavailable_exception()}
          | {:error, service_exception()}
          | {:error, throttling_exception()}
  def send_serial_console_ssh_public_key(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, auth_exception()}
          | {:error, ec2_instance_not_found_exception()}
          | {:error, ec2_instance_state_invalid_exception()}
          | {:error, ec2_instance_unavailable_exception()}
          | {:error, invalid_args_exception()}
          | {:error, service_exception()}
          | {:error, throttling_exception()}
  def send_ssh_public_key(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendSSHPublicKey", input, options)
  end
end
