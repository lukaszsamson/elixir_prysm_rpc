defmodule Ethereum.Eth.V1alpha1.SignedBLSToExecutionChange do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :message, 1, type: Ethereum.Eth.V1alpha1.BLSToExecutionChange
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BLSToExecutionChange do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :validator_index, 1, type: :uint64, json_name: "validatorIndex", deprecated: false
  field :from_bls_pubkey, 2, type: :bytes, json_name: "fromBlsPubkey", deprecated: false
  field :to_execution_address, 3, type: :bytes, json_name: "toExecutionAddress", deprecated: false
end