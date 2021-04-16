defmodule AWS.Client do
  @moduledoc """
  Provides credentials and connection details for making requests to AWS services.

  You can configure `access_key_id` and `secret_access_key` which are the credentials
  needed by [IAM](https://aws.amazon.com/iam), and also the `region` for your services.
  The list of regions can be found in the [AWS service endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html)
  documentation. You can also use "local" to make requests to your localhost.
  Note that the region is overwritten with the credential scope when the service is global.

  ## Custom HTTP client

  The option `http_client` accepts a tuple with a module and a list of options.
  The module must implement the callback `c:AWS.HTTPClient.request/5`.

  ## Custom JSON or XML parsers

  You can configure a custom JSON parser by using the option `json_module`. This
  option accepts a tuple with a module and options. The given module must
  implement the callbacks from `AWS.JSON`.

  Similarly, there is a `xml_module` option that configures the XML parser. The
  XML module must implement the callbacks from `AWS.XML`.

  ## Additional options

  - `session_token`: an option to set the `X-Amz-Security-Token` when performing
    the requests.
  - `port`: is the port to use when making requests. By default is `443`
  - `proto`: is the protocol to use. It can be "http" or "https". By default it's "https".
  - `endpoint`: AWS's endpoint. By default it is `amazonaws.com`.

  The `service` option is overwritten by each service with its signing name from metadata.
  """

  defstruct access_key_id: nil,
            secret_access_key: nil,
            session_token: nil,
            region: nil,
            service: nil,
            endpoint: "amazonaws.com",
            proto: "https",
            port: 443,
            http_client: {AWS.HTTPClient, []},
            json_module: {AWS.JSON, []},
            xml_module: {AWS.XML, []}

  @type t :: %__MODULE__{}

  @aws_access_key_id "AWS_ACCESS_KEY_ID"
  @aws_secret_access_key "AWS_SECRET_ACCESS_KEY"
  @aws_session_token "AWS_SESSION_TOKEN"
  @aws_default_region "AWS_DEFAULT_REGION"

  def create() do
    case System.get_env(@aws_default_region) do
      nil -> raise RuntimeError, "missing default region"
      region -> create(region)
    end
  end

  def create(region) do
    case {System.get_env(@aws_access_key_id), System.get_env(@aws_secret_access_key),
          System.get_env(@aws_session_token)} do
      {nil, _, _} ->
        raise RuntimeError, "missing access key id"

      {_, nil, _} ->
        raise RuntimeError, "missing secret access key"

      {access_key_id, secret_access_key, nil} ->
        create(access_key_id, secret_access_key, region)

      {access_key_id, secret_access_key, token} ->
        create(access_key_id, secret_access_key, token, region)
    end
  end

  def create(access_key_id, secret_access_key, region) do
    %AWS.Client{
      access_key_id: access_key_id,
      secret_access_key: secret_access_key,
      region: region
    }
  end

  def create(access_key_id, secret_access_key, token, region) do
    %AWS.Client{
      access_key_id: access_key_id,
      secret_access_key: secret_access_key,
      session_token: token,
      region: region
    }
  end

  def request(client, method, url, body, headers, _opts \\ []) do
    {mod, options} = Map.fetch!(client, :http_client)
    apply(mod, :request, [method, url, body, headers, options])
  end

  def encode!(_client, payload, :query), do: AWS.Util.encode_query(payload)

  def encode!(client, payload, format) do
    {mod, opts} = Map.fetch!(client, String.to_existing_atom("#{format}_module"))
    apply(mod, :encode_to_iodata!, [payload, opts])
  end

  def decode!(client, payload, format) do
    {mod, opts} = Map.fetch!(client, String.to_existing_atom("#{format}_module"))
    apply(mod, :decode!, [payload, opts])
  end
end
