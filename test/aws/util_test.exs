defmodule AWS.UtilTest do
  use ExUnit.Case
  alias AWS.Util

  test "encode_multi_segment_uri/1" do
    assert Util.encode_multi_segment_uri("/my$key") == "/my%24key"
    assert Util.encode_multi_segment_uri("/h!") == "/h%21"
  end

  test "encode_uri/1" do
    assert Util.encode_uri("/my$key") == "%2Fmy%24key"
    assert Util.encode_uri("/h!") == "%2Fh%21"
  end
end
