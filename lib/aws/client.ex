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
            http_client: {HTTPoison, :request},
            encode: %{json: {Poison.Parser, :parse!},
                      xml: {AWS.Util, :encode_xml},
                      query: {AWS.Util, :encode_query}},
            decode: %{json: {Poison.Encoder, :encode},
                      xml: {AWS.Util, :decode_xml},
                      query: {AWS.Util, :decode_xml}}


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

  def request(client, method, url, payload, headers, options) do
    {mod, fun} = Map.fetch(client, :http_client)
    apply(mod, fun, [method, url, payload, headers, options])
  end

  def encode!(client, payload, format) do
    {mod, fun} = client
    |> Map.fetch(:encode)
    |> Map.fetch(format)
    apply(mod, fun, [payload])
  end

  def decode!(client, payload, format) do
    {mod, fun} = client
    |> Map.fetch(:decode)
    |> Map.fetch(format)
    apply(mod, fun, [payload])
  end
end
