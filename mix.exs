defmodule AWS.Mixfile do
  use Mix.Project

  @version "0.10.1"
  @repo_url "https://github.com/aws-beam/aws-elixir"
  @auto_generated_files_dir "lib/aws/generated"

  def project do
    [
      app: :aws,
      version: @version,
      name: "aws-elixir",
      elixir: "~> 1.10",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      package: package(),
      docs: docs(),
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :crypto, :xmerl]
    ]
  end

  defp deps do
    [
      {:aws_signature, "~> 0.1.0"},
      {:jason, "~> 1.2"},
      {:dialyxir, "~> 1.1.0", only: [:dev], runtime: false},
      {:earmark, "~> 1.4", only: [:dev]},
      {:ex_doc, "~> 0.24", only: [:dev]},
      {:bypass, "~> 2.1", only: [:test]},
      {:hackney, "~> 1.16", optional: true}
    ]
  end

  defp package do
    [
      description: "AWS clients for Elixir",
      maintainers: ["Jamu Kakar"],
      licenses: ["Apache-2.0"],
      links: %{
        "Changelog" => "https://hexdocs.pm/aws/changelog.html",
        "GitHub" => @repo_url
      }
    ]
  end

  defp docs do
    [
      extras: [
        "CHANGELOG.md": [title: "Changelog"],
        LICENSE: [title: "License"],
        "README.md": [title: "Overview"]
      ],
      main: "readme",
      source_ref: "v#{@version}",
      source_url: @repo_url,
      homepage_url: @repo_url,
      formatters: ["html"],
      groups_for_modules: [
        "Web Services": &String.starts_with?(&1.source_path, @auto_generated_files_dir)
      ]
    ]
  end
end
