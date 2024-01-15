defmodule Ethereum.Eth.V2.Version do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :PHASE0, 0
  field :ALTAIR, 1
  field :BELLATRIX, 2
  field :CAPELLA, 3
  field :DENEB, 4
end