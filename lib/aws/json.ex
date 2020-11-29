defmodule AWS.JSON do
  @moduledoc """
  Specifies the behaviour of a JSON parser.

  You can switch the default JSON parser which uses Poison underneath
  by defining a different implementation by setting the `:json_module`
  configuration in AWS.Client:

      client = %AWS.Client{json_module: MyCustomJSONParser}
      AWS.SNS.publish(client, %{})

  """

  @doc """
  Encodes a map into JSON iodata. Raises in case of errors.
  """
  @callback encode_to_iodata!(input :: map(), options :: keyword()) :: iodata()

  @doc """
  Decodes a JSON string into a map. Raises in case of errors.
  """
  @callback decode!(input :: String.t(), options :: keyword()) :: map()

  defdelegate encode_to_iodata!(input, options), to: Poison, as: :encode!

  defdelegate decode!(input, options), to: Poison
end
