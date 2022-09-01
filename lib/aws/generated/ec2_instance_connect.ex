# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EC2InstanceConnect do
  @moduledoc """
  Amazon EC2 Instance Connect enables system administrators to publish one-time
  use SSH public keys to EC2, providing users a simple and secure way to connect
  to their instances.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "EC2 Instance Connect",
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

  The key remains for 60 seconds, which gives you 60 seconds to establish a serial
  console connection to the instance using SSH. For more information, see [EC2 Serial
  Console](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-serial-console.html)
  in the *Amazon EC2 User Guide*.
  """
  def send_serial_console_ssh_public_key(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendSerialConsoleSSHPublicKey", input, options)
  end

  @doc """
  Pushes an SSH public key to the specified EC2 instance for use by the specified
  user.

  The key remains for 60 seconds. For more information, see [Connect to your Linux instance using EC2 Instance
  Connect](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Connect-using-EC2-Instance-Connect.html)
  in the *Amazon EC2 User Guide*.
  """
  def send_ssh_public_key(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendSSHPublicKey", input, options)
  end
end
