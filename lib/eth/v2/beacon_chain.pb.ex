defmodule Ethereum.Eth.V2.BLSToExecutionChangesPoolResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V2.SignedBLSToExecutionChange
end