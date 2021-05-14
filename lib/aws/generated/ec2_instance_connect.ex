# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EC2InstanceConnect do
  @moduledoc """
  AWS EC2 Connect Service is a service that enables system administrators to
  publish temporary SSH keys to their EC2 instances in order to establish
  connections to their instances without leaving a permanent authentication
  option.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
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
  Pushes an SSH public key to a particular OS user on a given EC2 instance for 60
  seconds.
  """
  def send_ssh_public_key(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SendSSHPublicKey", input, options)
  end
end
