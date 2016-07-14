defmodule AWS.Mixfile do
  use Mix.Project

  def project do
    [app: :aws,
     description: "AWS clients for Elixir",
     package: package,
     version: version,
     name: "aws-elixir",
     source_url: "https://github.com/jkakar/aws-elixir",
     homepage_url: "http://github.com/jkakar/aws-elixir",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:httpoison, :logger, :timex]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [{:dialyxir, "~> 0.3", only: [:dev]},
     {:earmark, "~> 0.2.0", only: [:dev]},
     {:ex_doc, "~> 0.11.3", only: [:dev]},
     {:httpoison, "~> 0.8.0"},
     {:poison, "~> 1.5 or ~> 2.0"},
     {:timex, "~> 2.1"}]
  end

  defp version do
    "0.1.0"
  end

  defp package do
    [maintainers: ["Jamu Kakar"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/jkakar/aws-elixir",
              "Docs" => "http://hexdocs.pm/aws/#{version}/",
              "Changelog" => "https://github.com/jkakar/aws-elixir/blob/master/CHANGELOG.md"}]
  end
end
