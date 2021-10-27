defmodule AWS.XMLTest do
  use ExUnit.Case

  @text "__text"

  test "decode!/2 handles lists correctly by merging values in a list" do
    expected = %{"person" => %{"name" => "foo", "addresses" => %{"address" => ["1", "2", "œ"]}}}

    input = """
    <person>
      <name>foo</name>
      <addresses>
        <address>1</address>
        <address>2</address>
        <address>œ</address>
      </addresses>
    </person>
    """

    assert ^expected = AWS.XML.decode!(input)
  end

  test "decode!/1 handles multiple text elments mixed with other elements correctly" do
    expected = %{"person" => %{"name" => "foo", @text => "random"}}

    input = """
    <person>
      <name>foo</name>
      random
    </person>
    """

    assert ^expected = AWS.XML.decode!(input)

    expected = %{"person" => %{"name" => "foo", "age" => "42", @text => "random\n  \n  text"}}

    input = """
    <person>
      <name>foo</name>
      random
      <age>42</age>
      text
    </person>
    """

    assert ^expected = AWS.XML.decode!(input)
  end
end
