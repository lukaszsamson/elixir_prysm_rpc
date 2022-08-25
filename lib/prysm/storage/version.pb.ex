defmodule Ethereum.Eth.Storage.Version do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNKNOWN, 0
  field :PHASE0, 1
  field :ALTAIR, 2
  field :BELLATRIX, 3
end