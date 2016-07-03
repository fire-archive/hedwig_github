defmodule HedwigGithub.Mixfile do
  use Mix.Project

  @version "0.1.0"

  def project do
    [app: :hedwig_github,
     name: "Hedwig Github",
     version: @version,
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package,
     description: "A github adapter for Hedwig",
     deps: deps]
  end

  def application do
    [applications: [:logger, :connection, :gun, :poison, :hedwig]]
  end

  defp deps do
    [{:tentacat, "~> 0.5.2"},
     {:connection, "~> 1.0"},
     {:gun, "1.0.0-pre.1"},
     {:poison, "~> 2.0"},
     {:hedwig, github: "hedwig-im/hedwig"}]
  end

  defp package do
    [files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
     maintainers: ["Sonny Scroggin"],
     licenses: ["MIT"],
     links: %{
       "GitHub" => "https://github.com/fire/hedwig_github"
     }]
  end
end
