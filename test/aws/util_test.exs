defmodule AWS.UtilTest do
  use ExUnit.Case, async: true

  alias AWS.Util
  doctest(Util)

  test "encode_multi_segment_uri/1" do
    assert Util.encode_multi_segment_uri("/my$key") == "/my%24key"
    assert Util.encode_multi_segment_uri("/h!") == "/h%21"
  end

  test "encode_uri/1" do
    assert Util.encode_uri("/my$key") == "%2Fmy%24key"
    assert Util.encode_uri("/h!") == "%2Fh%21"
  end

  describe "encode_query/1" do
    test "with a basic input" do
      input = %{
        "Action" => "OperationName",
        "Bar" => 42,
        "Debit" => 1256.74,
        "Foo" => :val1,
        "Version" => "2014-01-01"
      }

      assert Util.encode_query(input) ==
               "Action=OperationName&Bar=42&Debit=1256.74&Foo=val1&Version=2014-01-01"
    end

    test "with a list of strings as key value" do
      input = %{
        "Action" => "OperationName",
        "Operations" => ["foo", "bar"]
      }

      assert Util.encode_query(input) ==
               "Action=OperationName&Operations.1=foo&Operations.2=bar"
    end

    test "with a map with string values" do
      input = %{
        "Action" => "OperationName",
        "Operation" => %{"name" => "foo", "state" => "bar"}
      }

      assert Util.encode_query(input) ==
               "Action=OperationName&Operation.name=foo&Operation.state=bar"
    end

    test "with a list of maps with strings and lists" do
      input = %{
        "Action" => "OperationName",
        "Operation" => [
          %{"name" => "foo", "state" => "bar"},
          %{"name" => "baz", "state" => "full"},
          %{"other" => ["a", "b", "c"]}
        ]
      }

      assert Util.encode_query(input) ==
               "Action=OperationName&Operation.1.name=foo&Operation.1.state=bar&Operation.2.name=baz&Operation.2.state=full&Operation.3.other.1=a&Operation.3.other.2=b&Operation.3.other.3=c"
    end
  end
end
