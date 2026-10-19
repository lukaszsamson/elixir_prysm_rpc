defmodule Ethereum.Eth.Dbval.BackfillStatus do
  @moduledoc false

  use Protobuf,
    full_name: "ethereum.eth.dbval.BackfillStatus",
    protoc_gen_elixir_version: "0.17.1",
    syntax: :proto3

  field :low_slot, 1, type: :uint64, json_name: "lowSlot"
  field :low_root, 2, type: :bytes, json_name: "lowRoot"
  field :low_parent_root, 3, type: :bytes, json_name: "lowParentRoot"
  field :origin_slot, 4, type: :uint64, json_name: "originSlot"
  field :origin_root, 6, type: :bytes, json_name: "originRoot"
end
