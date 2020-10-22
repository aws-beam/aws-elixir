# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EC2InstanceConnect do
  @moduledoc """
  AWS EC2 Connect Service is a service that enables system administrators to
  publish temporary SSH keys to their EC2 instances in order to establish
  connections to their instances without leaving a permanent authentication
  option.
  """

  @doc """
  Pushes an SSH public key to a particular OS user on a given EC2 instance
  for 60 seconds.
  """
  def send_s_s_h_public_key(client, input, options \\ []) do
    request(client, "SendSSHPublicKey", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "ec2-instance-connect"}
    host = build_host("ec2-instance-connect", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSEC2InstanceConnectService.#{action}"}
    ]

    payload = AWS.JSON.encode!(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    AWS.HTTP.request(:post, url, payload, headers, options, 200)
  end

  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
