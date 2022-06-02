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
  Encode a map or pairs of values into a querystring.

  This is going to work recursively if the value is a list or another map.

  ## Examples

      iex> input = %{"Action" => "OperationName", "Bar" => "val1", "Foo" => 42}
      iex> AWS.Util.encode_query(input)
      "Action=OperationName&Bar=val1&Foo=42"

      iex> input = [{"Action", "OperationName"}, {"Bar", "val1"}, {"Foo", 42}]
      iex> AWS.Util.encode_query(input)
      "Action=OperationName&Bar=val1&Foo=42"

      iex> input = %{"Action" => "OperationName", "Bar" => ["val1", "val2"], "Foo" => 42}
      iex> AWS.Util.encode_query(input)
      "Action=OperationName&Bar.1=val1&Bar.2=val2&Foo=42"

      iex> input = %{"Action" => "OperationName", "Bar" => %{"Baz" => ["val1", "val2"]}, "Foo" => 42}
      iex> AWS.Util.encode_query(input)
      "Action=OperationName&Bar.Baz.1=val1&Bar.Baz.2=val2&Foo=42"

  """
  def encode_query(input) do
    input
    |> Enum.map(&encode_query_value/1)
    |> List.flatten()
    |> :uri_string.compose_query()
  end

  defp encode_query_value({key, value}) when is_list(value) do
    value
    |> Enum.with_index(1)
    |> Enum.map(fn {inner_value, idx} ->
      encode_query_value({[key, ?., to_string(idx)], inner_value})
    end)
  end

  defp encode_query_value({key, %{} = map_value}) do
    for {k, v} <- map_value, do: encode_query_value({[key, ?., to_string(k)], v})
  end

  defp encode_query_value({key, value}), do: {IO.chardata_to_string(key), to_string(value)}
end
