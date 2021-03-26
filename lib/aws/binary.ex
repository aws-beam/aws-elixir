defmodule AWS.Binary do
  @moduledoc """
  Specifies the behaviour of a Binary parser.

  You can switch the default Binary parser which uses AWS.Util underneath
  by defining a different implementation by setting the `:binary_module`
  configuration in AWS.Client:

      client = %AWS.Client{binary_module: MyCustomBinaryParser}
      AWS.SNS.publish(client, %{})

  """

  @doc """
  Encodes a map into XML iodata. Raises in case of errors.
  """
  @callback encode_to_iodata!(input :: binary(), options :: keyword()) :: iodata()

  @doc """
  Decodes a XML into a map. Raises in case of errors.
  """
  @callback decode!(input :: iodata(), options :: keyword()) :: map()

  def encode_to_iodata!(binary, _opts \\ []) do
    binary
  end

  def decode!(binary, _opts \\ []) do
    %{
      binary: binary
    }
  end
end
