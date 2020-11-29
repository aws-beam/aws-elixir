defmodule AWS.JSON do
  @moduledoc """
  Specifies the behaviour of a JSON parser.

  You can switch the default JSON parser which uses Poison underneath
  by defining a different implementation by setting the `:json_module`
  configuration in AWS.Client:

     client = %AWS.Client{json_module: MyCustomJSONParser}
     Aws.SNS.publish(client, %{})

  """

  @doc """
  Encodes a map into JSON string. Raises in case of errors.
  """
  @callback encode!(input :: map(), options :: keyword()) :: String.t()

  @doc """
  Decodes a JSON string into a map. Raises in case of errors.
  """
  @callback decode!(input :: String.t(), options :: keyword()) :: map()

  defdelegate encode!(input, options), to: Poison

  defdelegate decode!(input, options), to: Poison
end
