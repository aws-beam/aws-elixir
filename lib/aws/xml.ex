defmodule AWS.XML do
  @moduledoc """
  Specifies the behaviour of a XML parser.

  You can switch the default XML parser which uses AWS.Util underneath
  by defining a different implementation by setting the `:xml_module`
  configuration in AWS.Client:

     client = %AWS.Client{xml_module: MyCustomXMLParser}
     Aws.SNS.publish(client, %{})

  """

  @doc """
  Encodes a map into XML string. Raises in case of errors.
  """
  @callback encode!(input :: map(), options :: keyword()) :: String.t()

  @doc """
  Decodes a XML string into a map. Raises in case of errors.
  """
  @callback decode!(input :: String.t(), options :: keyword()) :: map()
end
