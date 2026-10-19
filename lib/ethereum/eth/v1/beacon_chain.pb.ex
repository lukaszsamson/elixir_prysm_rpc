defmodule Ethereum.Eth.V1.StateRequest do
  @moduledoc false

  use Protobuf,
    full_name: "ethereum.eth.v1.StateRequest",
    protoc_gen_elixir_version: "0.17.1",
    syntax: :proto3

  field :state_id, 1, type: :bytes, json_name: "stateId"
end
