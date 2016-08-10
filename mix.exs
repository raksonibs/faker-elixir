defmodule Faker.Mixfile do
  use Mix.Project

  def project do
    [app: :faker_elixir,
     version: "0.0.1",
     elixir: "~> 1.3",
     description: "Faker file for creating fake data",
     package: package,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :timex]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:timex, "~> 2.1.4"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp package do 
    [
      contributors: ["Oskar Niburski"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/raksonibs/faker-elixir"},
      files: ~w(lib mix.exs README.md)
    ]
  end
end
