defmodule AWS.Util do
  @moduledoc false

  @doc """
  Create an HMAC-SHA256 for `key` and `message`.
  """
  def hmac_sha256(key, message) do
    :crypto.hmac(:sha256, key, message)
  end

  @doc """
  Create an HMAC-SHA256 hexdigest for `key` and `message`.
  """
  def hmac_sha256_hexdigest(key, message) do
    hmac_sha256(key, message) |> Base.encode16(case: :lower)
  end

  @doc """
  Create a SHA256 hexdigest for `value`.
  """
  def sha256_hexdigest(value) do
    :crypto.hash(:sha256, value) |> Base.encode16(case: :lower)
  end

  @doc """
  Encode URI.
  """
  def encode_uri(value, true = _multi_segment) do
    String.split(value, "/")
    |> Enum.map(&URI.encode/1)
    |> Enum.join("/")
  end

  @doc """
  Encode map into querystring.
  """
  def encode_query(value) do
    value
    |> Enum.map(fn {k, v} -> {k, to_string(v)} end)
    |> :uri_string.compose_query()
  end
end
