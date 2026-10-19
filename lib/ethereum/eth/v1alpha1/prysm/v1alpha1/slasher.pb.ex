defmodule Ethereum.Eth.V1alpha1.HighestAttestation do
  @moduledoc false

  use Protobuf,
    full_name: "ethereum.eth.v1alpha1.HighestAttestation",
    protoc_gen_elixir_version: "0.17.1",
    syntax: :proto3

  field :validator_index, 1, type: :uint64, json_name: "validatorIndex"

  field :highest_source_epoch, 2,
    type: :uint64,
    json_name: "highestSourceEpoch",
    deprecated: false

  field :highest_target_epoch, 3,
    type: :uint64,
    json_name: "highestTargetEpoch",
    deprecated: false
end
