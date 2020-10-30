defmodule AWS.ClientTest do
  use ExUnit.Case, async: true

  setup do
    %{client: %AWS.Client{}}
  end

  describe "decode!/3" do
    test "parses valid json", %{client: client} do
      assert AWS.Client.decode!(client, "{\"body\":\"content\"}", :json) == %{"body" => "content"}
    end

    test "parses valid xml", %{client: client} do
      assert AWS.Client.decode!(client, "<body>content</body>", :xml) == %{"body" => "content"}
    end
  end

 describe "encode!/3" do
    test "encodes into json", %{client: client} do
      assert AWS.Client.encode!(client,  %{"body" => "content"}, :json) == "{\"body\":\"content\"}"
    end

    test "encodes into xml", %{client: client} do
      assert AWS.Client.encode!(client, %{"body" => "content"}, :xml) == "<body>content</body>"
    end

    test "encodes into query", %{client: client} do
      assert AWS.Client.encode!(client, %{"q1" => "v1", "q2" => "v2"}, :query) == "q1=v1&q2=v2"
    end
  end
end
