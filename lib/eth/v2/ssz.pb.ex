defmodule Ethereum.Eth.V2.SSZContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: Ethereum.Eth.V2.Version, enum: true
  field :execution_optimistic, 2, type: :bool, json_name: "executionOptimistic"
  field :data, 3, type: :bytes
  field :finalized, 4, type: :bool
end