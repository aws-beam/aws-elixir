defmodule AWS.Client do
  @moduledoc """
  Provides credentials and connection details for making requests to AWS services.

  You can configure `access_key_id` and `secret_access_key` which are the credentials
  needed by [IAM](https://aws.amazon.com/iam), and also the `region` for your services.
  The list of regions can be found in the [AWS service endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html)
  documentation. You can also use "local" to make requests to your localhost.

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

  * `:session_token` - an option to set the `X-Amz-Security-Token` when performing
    the requests.
  * `:port` - is the port to use when making requests. Defaults to `443`.
  * `:proto` - is the protocol to use. It can be "http" or "https". Defaults to `"https"`.
  * `:endpoint` - the AWS endpoint. Defaults to `"amazonaws.com"`. You can configure this
  using `put_endpoint/2` for AWS compatible APIs.

  The `service` option is overwritten by each service with its signing name from metadata.
  """

  defstruct access_key_id: nil,
            secret_access_key: nil,
            session_token: nil,
            region: nil,
            service: nil,
            endpoint: nil,
            proto: "https",
            port: 443,
            http_client: {AWS.HTTPClient, []},
            json_module: {AWS.JSON, []},
            xml_module: {AWS.XML, []}

  @typedoc """
  The endpoint configuration.

  Check `put_endpoint/2` for more details.
  """
  @type endpoint_config :: binary() | {:keep_prefixes, binary()} | (map() -> binary())

  @type t :: %__MODULE__{
          access_key_id: binary() | nil,
          secret_access_key: binary() | nil,
          session_token: binary() | nil,
          service: binary() | nil,
          endpoint: endpoint_config(),
          proto: binary(),
          port: non_neg_integer(),
          http_client: {module(), keyword()},
          json_module: {module(), keyword()},
          xml_module: {module(), keyword()}
        }

  @aws_default_endpoint "amazonaws.com"

  @aws_access_key_id "AWS_ACCESS_KEY_ID"
  @aws_secret_access_key "AWS_SECRET_ACCESS_KEY"
  @aws_session_token "AWS_SESSION_TOKEN"
  @aws_default_region "AWS_DEFAULT_REGION"

  @doc """
  The default endpoint.

  Check `put_endpoint/2` for more details on how to configure
  a custom endpoint.
  """
  def default_endpoint, do: @aws_default_endpoint

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

  @doc """
  Configures the endpoint to a custom one.

  This is useful to set a custom endpoint when working with AWS
  compatible APIs.
  The following configuration is valid:

  * `"example.com"`: this will be used as it is, without considering
  regions or endpoint prefixes or account id.

  * `{:keep_prefixes, "example.com"}`: it will keep the same rules from
  AWS to build the prefixes.
  For example, if region is "us-east-1" and the service prefix is "s3",
  then the final endpoint will be `"s3.us-east-1.example.com"`

  * `fn options -> "example.com" end`: a function that will be invoked
  with options for that request. `options` is a map with the following
  shape:

      ```
      %{
        endpoint: endpoint_config(),
        region: binary() | nil,
        service: binary(),
        global?: boolean(),
        endpoint_prefix: binary(),
        account_id: binary() | nil
      }
      ```

  ## Examples

      iex> put_endpoint(%Client{}, "example.com")
      %Client{endpoint: "example.com}

      iex> put_endpoint(%Client{}, {:keep_prefixes, "example.com"})
      %Client{endpoint: {:keep_prefixes, "example.com}}

      iex> put_endpoint(%Client{}, fn opts -> Enum.join(["baz", opts.region, "foo.com"], ".") end)
      %Client{endpoint: #Function<>}

  """
  def put_endpoint(%__MODULE__{} = client, endpoint_config)
      when is_binary(endpoint_config) or is_function(endpoint_config, 1) do
    %{client | endpoint: endpoint_config}
  end

  def put_endpoint(%__MODULE__{} = client, {:keep_prefixes, endpoint} = endpoint_config)
      when is_binary(endpoint) do
    %{client | endpoint: endpoint_config}
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
