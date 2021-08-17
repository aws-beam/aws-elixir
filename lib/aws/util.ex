defmodule AWS.Util do
  @moduledoc false

  @doc """
  Encodes URI preserving segments.

  Segments are separated by a slash - "/".
  """
  def encode_multi_segment_uri(uri) do
    uri
    |> String.split("/")
    |> Enum.map_join("/", &encode_uri/1)
  end

  @doc """
  Encodes URI keeping unreserved chars untouched.
  """
  def encode_uri(uri) do
    URI.encode(uri, &URI.char_unreserved?/1)
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
