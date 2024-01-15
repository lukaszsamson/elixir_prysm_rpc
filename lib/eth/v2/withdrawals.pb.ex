defmodule Ethereum.Eth.V2.BLSToExecutionChange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :validator_index, 1, type: :uint64, json_name: "validatorIndex", deprecated: false
  field :from_bls_pubkey, 2, type: :bytes, json_name: "fromBlsPubkey", deprecated: false
  field :to_execution_address, 3, type: :bytes, json_name: "toExecutionAddress", deprecated: false
end

defmodule Ethereum.Eth.V2.SignedBLSToExecutionChange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: Ethereum.Eth.V2.BLSToExecutionChange
  field :signature, 2, type: :bytes, deprecated: false
end