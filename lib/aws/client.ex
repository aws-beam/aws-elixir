defmodule AWS.Client do
  @moduledoc """
  Access and connections details needed when making requests to AWS services.
  """

  defstruct access_key_id: nil,
            secret_access_key: nil,
            session_token: nil,
            region: nil,
            service: nil,
            endpoint: "amazonaws.com",
            proto: "https",
            port: "443",
            http_client: {HTTPoison, []},
            json_module: {Poison, [encode: :encode!, decode: :decode!]},
            xml_module: {AWS.Util, [encode: :encode_xml, decode: :decode_xml]}


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
    case { System.get_env(@aws_access_key_id),
           System.get_env(@aws_secret_access_key),
           System.get_env(@aws_session_token)
         } do
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
    %AWS.Client{access_key_id: access_key_id,
                secret_access_key: secret_access_key,
                region: region}

  end

  def create(access_key_id, secret_access_key, token, region) do
    %AWS.Client{access_key_id: access_key_id,
                secret_access_key: secret_access_key,
                session_token: token,
                region: region}
  end

  def request(client, method, url, payload, headers, _opts) do
    {mod, options} = Map.fetch(client, :http_client)
    apply(mod, :request, [method, url, payload, headers, options])
  end

  def encode!(_client, payload, :query), do: AWS.Util.encode_query(payload)
  def encode!(client, payload, format) do
    {mod, opts} = Map.fetch(client, String.to_existing_atom("#{format}_module"))
    fun = Keyword.get(opts, :encode, :encode!)
    apply(mod, fun, [payload, opts])
  end

  def decode!(client, payload, format) do
    {mod, opts} = Map.fetch(client, String.to_existing_atom("#{format}_module"))
    fun = Keyword.get(opts, :decode, :decode!)
    apply(mod, fun, [payload, opts])
  end
end
