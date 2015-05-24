defmodule AWS.Generate do
  defmodule Action do
    defstruct name: nil,
              function_name: nil,
              documentation: nil,
              docstring: "implement docstring"
  end

  defmodule Service do
    defstruct api_version: nil,
              abbreviation: nil,
              endpoint_prefix: nil,
              protocol: nil,
              json_version: nil,
              documentation: nil,
              docstring: "implement docstring",
              actions: []
  end

  @doc """
  Load JSON from the file `path` and convert it to a context that can be used
  to generate Elixir code for an AWS service.
  """
  def load_context(path) do
    data = File.read!(path)
    {:ok, json} = JSX.decode(data)
    transform_json(json)
  end

  def render(context, template_path) do
    EEx.eval_file(template_path, [context: context])
  end

  #content = AWS.Generate.load_context(path) |> AWS.Generate.render(template)

  defp transform_json(data) do
    actions = collect_actions(data)
    %Service{api_version: data["metadata"]["apiVersion"],
             abbreviation: data["metadata"]["serviceAbbreviation"],
             endpoint_prefix: data["metadata"]["endpointPrefix"],
             protocol: data["metadata"]["json"],
             json_version: data["metadata"]["jsonVersion"],
             documentation: data["documentation"],
             actions: actions}
  end

  defp collect_actions(data) do
    Enum.map(data["operations"], fn({_action, metadata}) ->
      %Action{name: metadata["name"], documentation: metadata["documentation"]}
    end)
  end
end
