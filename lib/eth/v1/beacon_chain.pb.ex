defmodule Ethereum.Eth.V1.StateRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :state_id, 1, type: :bytes, json_name: "stateId"
end