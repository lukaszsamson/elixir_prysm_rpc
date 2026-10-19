defmodule Ethereum.Eth.V1alpha1.FinalizedBlockRootContainer do
  @moduledoc false

  use Protobuf,
    full_name: "ethereum.eth.v1alpha1.FinalizedBlockRootContainer",
    protoc_gen_elixir_version: "0.17.1",
    syntax: :proto3

  field :parent_root, 1, type: :bytes, json_name: "parentRoot"
  field :child_root, 2, type: :bytes, json_name: "childRoot"
end
