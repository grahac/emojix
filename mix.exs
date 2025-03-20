defmodule Emojix.MixProject do
  use Mix.Project

  @version "0.5.0"

  def project do
    [
      app: :emojix,
      version: @version,
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Emojix.App, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:jason, "~> 1.4"},
      {:castore, "~> 1.0"},
      {:mint, "~> 1.5"},
      {:ex_doc, "~> 0.30", only: :dev, runtime: false}
    ]
  end

  defp description do
    """
    Simple emoji library for Elixir. 💩
    """
  end

  defp package do
    [
      maintainers: ["Bruno Ukita <brunoukita@gmail.com>"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/ukita/emojix"}
    ]
  end
end
