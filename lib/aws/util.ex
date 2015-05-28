defmodule AWS.Util do
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
end
