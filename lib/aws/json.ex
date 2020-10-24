defmodule AWS.JSON do
  def encode!(data) do
    Poison.encode!(data)
  end

  def decode!(data) do
    Poison.decode!(data)
  end
end
