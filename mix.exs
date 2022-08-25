defmodule PrysmRPC.MixProject do
  use Mix.Project

  def project do
    [
      app: :prysm_rpc,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:grpc, github: "elixir-grpc/grpc"},
      {:protobuf, "~> 0.11"},
      {:google_protos, "~> 0.3"}
    ]
  end
end
