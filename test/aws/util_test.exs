defmodule AWS.UtilTest do
  use ExUnit.Case
  alias AWS.Util

  test "hmac_sha256/2 returns a SHA256 HMAC for a message" do
    expected = <<110, 158, 242, 155, 117, 255, 252,  91,
                 122, 186, 229,  39, 213, 143, 218, 219,
                  47, 228,  46, 114,  25,   1,  25, 118,
                 145, 115,  67,   6,  95,  88, 237,  74>>
    assert ^expected = Util.hmac_sha256("key", "message")
  end

  test "hmac_sha256_hexdigest/2 returns an HMAC SHA256 hexdigest for a message" do
    expected = "6e9ef29b75fffc5b7abae527d58fdadb2fe42e7219011976917343065f58ed4a"
    assert ^expected = Util.hmac_sha256_hexdigest("key", "message")
  end

  test "sha256_hexdigest/1 returns a SHA256 hexdigest for an empty value" do
    expected = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    assert ^expected = Util.sha256_hexdigest("")
  end

  test "sha256_hexdigest/1 returns a SHA256 hexdigest for a non-empty body" do
    expected = "315f5bdb76d078c43b8ac0064e4a0164612b1fce77c869345bfc94c75894edd3"
    assert ^expected = Util.sha256_hexdigest("Hello, world!")
  end

  @text "__text"

  test "decode_xml/1 handles lists correctly by merging values in a list" do
    expected = %{ "person" => %{ "name" => "foo",
                                 "addresses" => %{"address" => ["1", "2"]}
                               }
                }
    input = """
    <person>
      <name>foo</name>
      <addresses>
        <address>1</address>
        <address>2</address>
      </addresses>
    </person>
    """
    assert ^expected = Util.decode_xml(input)
  end

  test "decode_xml/1 handles multiple text elments mixed with other elements correctly" do
    expected = %{"person" => %{"name" => "foo", @text => "random"}}
    input = """
    <person>
      <name>foo</name>
      random
    </person>
    """
    assert ^expected = Util.decode_xml(input)

    expected = %{"person" => %{ "name" => "foo",
                                "age" => "42",
                                @text => "random\n  \n  text"
                              }
                }
    input = """
    <person>
      <name>foo</name>
      random
      <age>42</age>
      text
    </person>
    """
    assert ^expected = Util.decode_xml(input)
  end

end
