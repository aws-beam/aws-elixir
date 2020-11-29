defmodule AWS.XML do
  @moduledoc """
  Specifies the behaviour of a XML parser.

  You can switch the default XML parser which uses AWS.Util underneath
  by defining a different implementation by setting the `:xml_module`
  configuration in AWS.Client:

      client = %AWS.Client{xml_module: MyCustomXMLParser}
      AWS.SNS.publish(client, %{})

  """

  @doc """
  Encodes a map into XML iodata. Raises in case of errors.
  """
  @callback encode_to_iodata!(input :: map(), options :: keyword()) :: iodata()

  @doc """
  Decodes a XML string into a map. Raises in case of errors.
  """
  @callback decode!(input :: String.t(), options :: keyword()) :: map()

  defdelegate encode_to_iodata!(input, options), to: AWS.Util, as: :encode!

  defdelegate decode!(input, options), to: AWS.Util
end
