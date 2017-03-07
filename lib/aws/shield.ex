# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Shield do
  @moduledoc """
  AWS Shield Advanced

  This is the *AWS Shield Advanced API Reference*. This guide is for
  developers who need detailed information about the AWS Shield Advanced API
  actions, data types, and errors. For detailed information about AWS WAF and
  AWS Shield Advanced features and an overview of how to use the AWS WAF and
  AWS Shield Advanced APIs, see the [AWS WAF and AWS Shield Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """

  @doc """
  Enables AWS Shield Advanced for a specific AWS resource. The resource can
  be an Amazon CloudFront distribution, Elastic Load Balancing load balancer,
  or an Amazon Route 53 hosted zone.
  """
  def create_protection(client, input, options \\ []) do
    request(client, "CreateProtection", input, options)
  end

  @doc """
  Activates AWS Shield Advanced for an account.
  """
  def create_subscription(client, input, options \\ []) do
    request(client, "CreateSubscription", input, options)
  end

  @doc """
  Deletes an AWS Shield Advanced `Protection`.
  """
  def delete_protection(client, input, options \\ []) do
    request(client, "DeleteProtection", input, options)
  end

  @doc """
  Removes AWS Shield Advanced from an account.
  """
  def delete_subscription(client, input, options \\ []) do
    request(client, "DeleteSubscription", input, options)
  end

  @doc """
  Describes the details of a DDoS attack.
  """
  def describe_attack(client, input, options \\ []) do
    request(client, "DescribeAttack", input, options)
  end

  @doc """
  Lists the details of a `Protection` object.
  """
  def describe_protection(client, input, options \\ []) do
    request(client, "DescribeProtection", input, options)
  end

  @doc """
  Provides details about the AWS Shield Advanced subscription for an account.
  """
  def describe_subscription(client, input, options \\ []) do
    request(client, "DescribeSubscription", input, options)
  end

  @doc """
  Returns all ongoing DDoS attacks or all DDoS attacks during a specified
  time period.
  """
  def list_attacks(client, input, options \\ []) do
    request(client, "ListAttacks", input, options)
  end

  @doc """
  Lists all `Protection` objects for the account.
  """
  def list_protections(client, input, options \\ []) do
    request(client, "ListProtections", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "shield"}
    host = get_host("shield", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "AWSShield_20160616.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

end
