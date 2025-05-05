defmodule Ethereum.Eth.V1alpha1.FinalizedBlockRootContainer do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :parent_root, 1, type: :bytes, json_name: "parentRoot"
  field :child_root, 2, type: :bytes, json_name: "childRoot"
end