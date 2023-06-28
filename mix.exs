defmodule Botiful.MixProject do
  use Mix.Project

  def project do
    [
      app: :botiful,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:plug_cowboy, :plug, :logger],
      mod: {Botiful.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug, "~> 1.14"},
      {:plug_cowboy, "~> 2.6"}
    ]
  end
end
