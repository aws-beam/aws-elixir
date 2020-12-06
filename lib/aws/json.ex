defmodule AWS.JSON do
  @moduledoc """
  Specifies the behaviour of a JSON parser.

  You can switch the default JSON parser which uses Jason underneath
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
  Decodes a JSON into a map. Raises in case of errors.
  """
  @callback decode!(input :: iodata(), options :: keyword()) :: map()

  defdelegate encode_to_iodata!(input, options), to: Jason, as: :encode!

  defdelegate decode!(input, options), to: Jason
end
