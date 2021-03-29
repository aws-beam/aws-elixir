defmodule AWS.Mixfile do
  use Mix.Project

  @version "0.7.0"
  @repo_url "https://github.com/aws-beam/aws-elixir"
  @auto_generated_files_dir "lib/aws/generated"

  def project do
    [
      app: :aws_elixir,
      description: "AWS clients for Elixir",
      package: package(),
      version: @version,
      name: "aws-elixir",
      source_url: @repo_url,
      homepage_url: @repo_url,
      elixir: "~> 1.6",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      docs: docs(),
      deps: deps()
    ]
  end

  def application do
    [extra_applications: [:logger, :crypto, :xmerl, :eex]]
  end

  defp deps do
    [
      {:dialyxir, "~> 0.5.0", only: [:dev]},
      {:earmark, "~> 1.4", only: [:dev]},
      {:ex_doc, "~> 0.21", only: [:dev]},
      {:bypass, "~> 2.1", only: [:test]},
      {:jason, "~> 1.2"},
      {:hackney, "~> 1.16", optional: true}
    ]
  end

  defp package do
    [
      maintainers: ["Jamu Kakar"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => @repo_url, "Changelog" => @repo_url <> "/blob/master/CHANGELOG.md"}
    ]
  end

  defp docs do
    [
      main: "AWS",
      groups_for_modules: [
        "Web Services": &String.starts_with?(&1.source_path, @auto_generated_files_dir)
      ],
      source_ref: "v#{@version}",
      source_url: @repo_url
    ]
  end
end
