defmodule Ethereum.Eth.V1.StateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state_id, 1, type: :bytes, json_name: "stateId"
end