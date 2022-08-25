defmodule Ethereum.Eth.V1alpha1.FinalizedBlockRootContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent_root, 1, type: :bytes, json_name: "parentRoot"
  field :child_root, 2, type: :bytes, json_name: "childRoot"
end