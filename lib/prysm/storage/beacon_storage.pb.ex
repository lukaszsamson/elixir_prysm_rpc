defmodule Ethereum.Eth.Storage.BeaconStateForStorage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :storageState, 0

  field :state_v1, 1,
    type: Ethereum.Eth.Storage.StorageBeaconStateV1,
    json_name: "stateV1",
    oneof: 0
end

defmodule Ethereum.Eth.Storage.StorageBeaconStateV1 do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1001, type: Ethereum.Eth.Storage.Version, enum: true
  field :validatorIndexes, 1002, type: :bytes
  field :state, 2000, type: :bytes
end