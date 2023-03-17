defmodule AWS.Mixfile do
  use Mix.Project

  @version "0.13.2"
  @repo_url "https://github.com/aws-beam/aws-elixir"

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
      deps: deps(),
      xref: [
        exclude: [
          :hackney,
          Finch
        ]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger, :crypto, :xmerl]
    ]
  end

  defp deps do
    [
      {:aws_signature, "~> 0.3"},
      {:jason, "~> 1.2"},
      {:dialyxir, "~> 1.1.0", only: [:dev], runtime: false},
      {:earmark, "~> 1.4", only: [:dev]},
      {:ex_doc, "~> 0.24", only: [:dev]},
      {:bypass, "~> 2.1", only: [:test]},
      {:finch, "~> 0.13", optional: true},
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
        "Base modules": [
          AWS,
          AWS.Client,
          AWS.HTTPClient,
          AWS.HTTPClient.Finch,
          AWS.HTTPClient.Hackney,
          AWS.JSON,
          AWS.XML
        ]
      ]
    ]
  end
end
